

import Path from 'node:path'
import * as Fs from 'node:fs'

import { test, describe, afterEach } from 'node:test'
import assert from 'node:assert'
import { createLiveTransport } from '../../live-runner'
import { runLiveEntity } from '../../live-entity'


import { IstoriesSDK, BaseFeature, stdutil } from '../../..'

import {
  envOverride,
  liveClientOptions,
  liveDelay,
  loadEnvLocal,
  makeCtrl,
  makeMatch,
  makeReqdata,
  makeStepData,
  makeValid,
  maybeSkipControl,
} from '../../utility'


loadEnvLocal(__dirname + '/../../../.env.local')


describe('NewEntity', async () => {

  // Per-test live pacing. Delay is read from sdk-test-control.json's
  // `test.live.delayMs`; only sleeps when ISTORIES_TEST_LIVE=TRUE.
  afterEach(liveDelay('ISTORIES_TEST_LIVE'))

  test('instance', async () => {
    const testsdk = IstoriesSDK.test()
    const ent = testsdk.New()
    assert(null != ent)
  })


  test('basic', async (t) => {

    const live = 'TRUE' === process.env.ISTORIES_TEST_LIVE
    for (const op of ['list']) {
      if (!live && maybeSkipControl(t, 'entityOp', 'new.' + op, live)) return
    }

    
    const setup = basicSetup()
    if (setup.live) {
      return runLiveEntity(setup, {"active":true,"alias":{"field":{}},"fields":{},"name":"new","op":{"list":{"input":"data","name":"list","points":[{"a":true,"co":{"id":"GET /page-data/news/page-data.json","source":"openapi3","version":2},"g":{},"k":"http","m":"GET","o":"/page-data/news/page-data.json","q":{"$action":"page_data"},"r":{},"s":[{"lit":"page-data"},{"lit":"news"},{"lit":"page-data.json"}],"t":{"req":"`reqdata`","res":"`body`"},"index$":0}],"key$":"list"}},"relations":{"ancestors":[]},"key$":"new","name__orig":"new","Name":"New","name_":"new","name-":"new","NAME":"NEW","index$":0}, {"active":true,"entity":"new","key$":"BasicNewFlow","kind":"basic","name":"BasicNewFlow","param":{},"step":[{"a":true,"d":{},"i":{},"m":{},"o":"list","s":[],"v":[{"apply":"ItemExists","def":{"ref":"new_ref01"}}],"index$":0}]}, 'New', {"GET /page-data/news/page-data.json":{"protocol":"http","operationId":"getNews","responses":{"200":{"description":"Successful response containing news data","content":{"application/json":{"schema":{"type":"object","properties":{"result":{"key$":"result","properties":{"data":{"description":"Contains the news data and page information","type":"object"},"pageContext":{"description":"Page context information","type":"object"}},"type":"object"},"componentChunkName":{"description":"Component chunk identifier","key$":"componentChunkName","type":"string"},"path":{"description":"Page path","key$":"path","type":"string"},"staticQueryHashes":{"description":"Static query hashes","items":{"type":"string"},"key$":"staticQueryHashes","type":"array"}}}}}},"400":{"description":"Bad request"},"500":{"description":"Internal server error"}},"parameters":[],"securitySource":"unspecified"}})
    }
    const client = setup.client
    const struct = setup.struct

    const isempty = struct.isempty
    const select = struct.select

    let new_ref01_data = Object.values(setup.data.existing.new)[0] as any

    // LIST
    const new_ref01_ent = client.New()
    const new_ref01_match: any = {}

    const new_ref01_list = (await new_ref01_ent.list(new_ref01_match)).map((e: any) => e.data())


  })
})



function basicSetup(extra?: any) {
  // TODO: fix test def options
  const options: any = {} // null

  // TODO: needs test utility to resolve path
  const entityDataFile =
    Path.resolve(__dirname, 
      '../../../../.sdk/test/entity/new/NewTestData.json')

  // TODO: file ready util needed?
  const entityDataSource = Fs.readFileSync(entityDataFile).toString('utf8')

  // TODO: need a xlang JSON parse utility in voxgig/struct with better error msgs
  const entityData = JSON.parse(entityDataSource)

  options.entity = entityData.existing

  let client = IstoriesSDK.test(options, extra)
  const struct = client.utility().struct
  const merge = struct.merge
  const transform = struct.transform

  let idmap = transform(
    ['new01','new02','new03'],
    {
      '`$PACK`': ['', {
        '`$KEY`': '`$COPY`',
        '`$VAL`': ['`$FORMAT`', 'upper', '`$COPY`']
      }]
    })

  const env = envOverride({
    'ISTORIES_TEST_NEW_ENTID': idmap,
    'ISTORIES_TEST_LIVE': 'FALSE',
    'ISTORIES_TEST_EXPLAIN': 'FALSE',
  })

  idmap = env['ISTORIES_TEST_NEW_ENTID']

  const live = 'TRUE' === env.ISTORIES_TEST_LIVE

  const transport = createLiveTransport()
  if (live) {
    const rawIds = process.env['ISTORIES_TEST_NEW_ENTID']
    idmap = rawIds && rawIds.trim() ? JSON.parse(rawIds) : {}
    if (!idmap || Array.isArray(idmap) || typeof idmap !== 'object') {
      throw new Error('Live ENTID must be a JSON object')
    }
    client = new IstoriesSDK(merge([
      // FIRST, so the generated fields below win: sdk-test-control.json's
      // test.client.options adds to the live client, it does not redirect it.
      liveClientOptions(),
      {
      },
      // 'extra || {}', not a bare 'extra': struct.merge returns UNDEFINED when the
      // last entry is undefined, and basicSetup is normally called with no
      // argument at all - so a bare 'extra' silently discarded the apikey
      // and server values above and handed the SDK undefined. Harmless
      // while there was nothing in that object; not harmless now.
      extra || {},
      { system: { fetch: transport.fetch } }
    ]))
  }

  const setup = {
    idmap,
    env,
    options,
    client,
    struct,
    data: entityData,
    explain: 'TRUE' === env.ISTORIES_TEST_EXPLAIN,
    live,
    transport,
    now: Date.now(),
  }

  return setup
}
  


import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { IstoriesSDK } from '..'


describe('exists', async () => {

  test('test-mode', async () => {
    const testsdk = await IstoriesSDK.test()
    equal(null !== testsdk, true)
  })

})

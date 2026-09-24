
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { IstoriesSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = IstoriesSDK.test()
    equal(testsdk instanceof IstoriesSDK, true,
      'IstoriesSDK.test() must return a client synchronously')
  })

})


import { Context } from './Context'


class IstoriesError extends Error {

  isIstoriesError = true

  sdk = 'Istories'

  code: string
  ctx: Context

  constructor(code: string, msg: string, ctx: Context) {
    super(msg)
    this.code = code
    this.ctx = ctx
  }

}

export {
  IstoriesError
}


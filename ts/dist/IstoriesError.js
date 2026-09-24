"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.IstoriesError = void 0;
class IstoriesError extends Error {
    isIstoriesError = true;
    sdk = 'Istories';
    code;
    ctx;
    status = -1;
    // `err.notFound` rather than a magic number at every call site.
    get notFound() { return 404 === this.status; }
    constructor(code, msg, ctx) {
        super(msg);
        this.code = code;
        this.ctx = ctx;
    }
}
exports.IstoriesError = IstoriesError;
//# sourceMappingURL=IstoriesError.js.map
# Istories SDK utility: make_context

from istories_sdk.core.context import IstoriesContext


def make_context_util(ctxmap, basectx):
    return IstoriesContext(ctxmap, basectx)

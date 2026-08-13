# Istories SDK utility: make_context

from projectname_sdk.core.context import IstoriesContext


def make_context_util(ctxmap, basectx):
    return IstoriesContext(ctxmap, basectx)

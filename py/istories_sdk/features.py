# Istories SDK feature factory

from istories_sdk.feature.base_feature import IstoriesBaseFeature
from istories_sdk.feature.ratelimit_feature import IstoriesRatelimitFeature
from istories_sdk.feature.retry_feature import IstoriesRetryFeature
from istories_sdk.feature.test_feature import IstoriesTestFeature
from istories_sdk.feature.timeout_feature import IstoriesTimeoutFeature


_FEATURES = {
    "base": lambda: IstoriesBaseFeature(),
    "ratelimit": lambda: IstoriesRatelimitFeature(),
    "retry": lambda: IstoriesRetryFeature(),
    "test": lambda: IstoriesTestFeature(),
    "timeout": lambda: IstoriesTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES

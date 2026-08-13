# Istories SDK feature factory

from istories_sdk.feature.base_feature import IstoriesBaseFeature
from istories_sdk.feature.test_feature import IstoriesTestFeature


def _make_feature(name):
    features = {
        "base": lambda: IstoriesBaseFeature(),
        "test": lambda: IstoriesTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()

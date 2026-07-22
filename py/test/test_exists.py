# ProjectName SDK exists test

import pytest
from istories_sdk import IstoriesSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = IstoriesSDK.test(None, None)
        assert testsdk is not None

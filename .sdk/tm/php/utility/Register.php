<?php
declare(strict_types=1);

// Istories SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

IstoriesUtility::setRegistrar(function (IstoriesUtility $u): void {
    $u->clean = [IstoriesClean::class, 'call'];
    $u->done = [IstoriesDone::class, 'call'];
    $u->make_error = [IstoriesMakeError::class, 'call'];
    $u->feature_add = [IstoriesFeatureAdd::class, 'call'];
    $u->feature_hook = [IstoriesFeatureHook::class, 'call'];
    $u->feature_init = [IstoriesFeatureInit::class, 'call'];
    $u->fetcher = [IstoriesFetcher::class, 'call'];
    $u->make_fetch_def = [IstoriesMakeFetchDef::class, 'call'];
    $u->make_context = [IstoriesMakeContext::class, 'call'];
    $u->make_options = [IstoriesMakeOptions::class, 'call'];
    $u->make_request = [IstoriesMakeRequest::class, 'call'];
    $u->make_response = [IstoriesMakeResponse::class, 'call'];
    $u->make_result = [IstoriesMakeResult::class, 'call'];
    $u->make_point = [IstoriesMakePoint::class, 'call'];
    $u->make_spec = [IstoriesMakeSpec::class, 'call'];
    $u->make_url = [IstoriesMakeUrl::class, 'call'];
    $u->param = [IstoriesParam::class, 'call'];
    $u->prepare_auth = [IstoriesPrepareAuth::class, 'call'];
    $u->prepare_body = [IstoriesPrepareBody::class, 'call'];
    $u->prepare_headers = [IstoriesPrepareHeaders::class, 'call'];
    $u->prepare_method = [IstoriesPrepareMethod::class, 'call'];
    $u->prepare_params = [IstoriesPrepareParams::class, 'call'];
    $u->prepare_path = [IstoriesPreparePath::class, 'call'];
    $u->prepare_query = [IstoriesPrepareQuery::class, 'call'];
    $u->result_basic = [IstoriesResultBasic::class, 'call'];
    $u->result_body = [IstoriesResultBody::class, 'call'];
    $u->result_headers = [IstoriesResultHeaders::class, 'call'];
    $u->transform_request = [IstoriesTransformRequest::class, 'call'];
    $u->transform_response = [IstoriesTransformResponse::class, 'call'];
});

<?php
declare(strict_types=1);

// Istories SDK utility: prepare_body

class IstoriesPrepareBody
{
    public static function call(IstoriesContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}

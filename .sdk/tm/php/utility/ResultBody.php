<?php
declare(strict_types=1);

// Istories SDK utility: result_body

class IstoriesResultBody
{
    public static function call(IstoriesContext $ctx): ?IstoriesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}

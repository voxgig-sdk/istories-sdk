<?php
declare(strict_types=1);

// Istories SDK utility: result_headers

class IstoriesResultHeaders
{
    public static function call(IstoriesContext $ctx): ?IstoriesResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}

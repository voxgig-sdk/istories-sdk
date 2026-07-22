<?php
declare(strict_types=1);

// Istories SDK utility: prepare_headers

class IstoriesPrepareHeaders
{
    public static function call(IstoriesContext $ctx): array
    {
        $options = $ctx->client->options_map();
        $headers = \Voxgig\Struct\Struct::getprop($options, 'headers');
        if (!$headers) {
            return [];
        }
        $out = \Voxgig\Struct\Struct::clone($headers);
        return is_array($out) ? $out : [];
    }
}

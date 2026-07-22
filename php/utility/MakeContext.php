<?php
declare(strict_types=1);

// Istories SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class IstoriesMakeContext
{
    public static function call(array $ctxmap, ?IstoriesContext $basectx): IstoriesContext
    {
        return new IstoriesContext($ctxmap, $basectx);
    }
}

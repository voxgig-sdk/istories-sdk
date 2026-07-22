<?php
declare(strict_types=1);

// Istories SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class IstoriesFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new IstoriesBaseFeature();
            case "test":
                return new IstoriesTestFeature();
            default:
                return new IstoriesBaseFeature();
        }
    }
}

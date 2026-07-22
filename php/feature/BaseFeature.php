<?php
declare(strict_types=1);

// Istories SDK base feature

class IstoriesBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    // Positions this feature when added via the client `extend` option:
    // "__before__" / "__after__" / "__replace__" name an already-added
    // feature (mirrors the ts feature `_options`). Declared so setting it
    // on an extension instance avoids the dynamic-property deprecation.
    public ?array $_options = null;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(IstoriesContext $ctx, array $options): void {}
    public function PostConstruct(IstoriesContext $ctx): void {}
    public function PostConstructEntity(IstoriesContext $ctx): void {}
    public function SetData(IstoriesContext $ctx): void {}
    public function GetData(IstoriesContext $ctx): void {}
    public function GetMatch(IstoriesContext $ctx): void {}
    public function SetMatch(IstoriesContext $ctx): void {}
    public function PrePoint(IstoriesContext $ctx): void {}
    public function PreSpec(IstoriesContext $ctx): void {}
    public function PreRequest(IstoriesContext $ctx): void {}
    public function PreResponse(IstoriesContext $ctx): void {}
    public function PreResult(IstoriesContext $ctx): void {}
    public function PreDone(IstoriesContext $ctx): void {}
    public function PreUnexpected(IstoriesContext $ctx): void {}
}

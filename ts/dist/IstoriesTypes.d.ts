export interface New {
    componentChunkName?: string;
    path?: string;
    result?: Record<string, any>;
    staticQueryHashes?: any[];
}
export interface NewListMatch {
    componentChunkName?: string;
    path?: string;
    result?: Record<string, any>;
    staticQueryHashes?: any[];
    $action?: string;
    [action: string]: any;
}

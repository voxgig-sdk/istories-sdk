// Typed models for the Istories SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
// params (op.<name>.points[].args.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface New {
}

export interface NewListMatch {

  // Selects a custom action instead of the plain list:
  //   'page_data'
  // The remaining keys are that action's own payload.
  $action?: string
  [action: string]: any
}


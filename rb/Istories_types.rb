# frozen_string_literal: true

# Typed models for the Istories SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# New entity data model.
#
# @!attribute [rw] componentChunkName
#   @return [String, nil]
#
# @!attribute [rw] path
#   @return [String, nil]
#
# @!attribute [rw] result
#   @return [Hash, nil]
#
# @!attribute [rw] staticQueryHashes
#   @return [Array, nil]
New = Struct.new(
  :componentChunkName,
  :path,
  :result,
  :staticQueryHashes,
  keyword_init: true
)

# Request payload for New#list.
#
# @!attribute [rw] componentChunkName
#   @return [String, nil]
#
# @!attribute [rw] path
#   @return [String, nil]
#
# @!attribute [rw] result
#   @return [Hash, nil]
#
# @!attribute [rw] staticQueryHashes
#   @return [Array, nil]
NewListMatch = Struct.new(
  :componentChunkName,
  :path,
  :result,
  :staticQueryHashes,
  keyword_init: true
)


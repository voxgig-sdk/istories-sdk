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
# @!attribute [rw] component_chunk_name
#   @return [String, nil]
#
# @!attribute [rw] path
#   @return [String, nil]
#
# @!attribute [rw] result
#   @return [Hash, nil]
#
# @!attribute [rw] static_query_hash
#   @return [Array, nil]
New = Struct.new(
  :component_chunk_name,
  :path,
  :result,
  :static_query_hash,
  keyword_init: true
)

# Request payload for New#list.
#
# @!attribute [rw] component_chunk_name
#   @return [String, nil]
#
# @!attribute [rw] path
#   @return [String, nil]
#
# @!attribute [rw] result
#   @return [Hash, nil]
#
# @!attribute [rw] static_query_hash
#   @return [Array, nil]
NewListMatch = Struct.new(
  :component_chunk_name,
  :path,
  :result,
  :static_query_hash,
  keyword_init: true
)


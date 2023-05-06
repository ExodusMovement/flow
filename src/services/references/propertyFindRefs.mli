(*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

val property_find_refs_in_file :
  loc_of_aloc:(ALoc.t -> Loc.t) ->
  FindRefsUtils.ast_info ->
  FindRefsUtils.type_info ->
  File_key.t ->
  GetDefUtils.single_def_info Nel.t ->
  string ->
  (FindRefsTypes.single_ref list, string) result

val find_local_refs :
  reader:State_reader.t ->
  File_key.t ->
  FindRefsUtils.ast_info ->
  FindRefsUtils.type_info ->
  Loc.t ->
  (FindRefsTypes.find_refs_ok, string) result

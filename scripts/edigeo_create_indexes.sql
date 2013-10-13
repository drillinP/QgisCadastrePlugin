-- annee
CREATE INDEX geo_commune_annee_idx ON geo_commune (annee );
CREATE INDEX geo_section_annee_idx ON geo_section (annee );
CREATE INDEX geo_subdsect_annee_idx ON geo_subdsect (annee, object_rid);
CREATE INDEX geo_parcelle_annee_idx ON geo_parcelle (annee,object_rid );
CREATE INDEX geo_subdfisc_annee_idx ON geo_subdfisc (annee,object_rid );
CREATE INDEX geo_voiep_annee_idx ON geo_voiep (annee );
CREATE INDEX geo_numvoie_annee_idx ON geo_numvoie (annee,object_rid );
CREATE INDEX geo_lieudit_annee_idx ON geo_lieudit (annee );
CREATE INDEX geo_batiment_annee_idx ON geo_batiment (annee,object_rid );
CREATE INDEX geo_zoncommuni_annee_idx ON geo_zoncommuni (annee,object_rid );
CREATE INDEX geo_tronfluv_annee_idx ON geo_tronfluv (annee,object_rid );
CREATE INDEX geo_ptcanv_annee_idx ON geo_ptcanv (annee,object_rid );
CREATE INDEX geo_borne_annee_idx ON geo_borne (annee,object_rid );
CREATE INDEX geo_croix_annee_idx ON geo_croix (annee,object_rid );
CREATE INDEX geo_symblim_annee_idx ON geo_symblim (annee,object_rid );
CREATE INDEX geo_tpoint_annee_idx ON geo_tpoint (annee,object_rid );
CREATE INDEX geo_tline_annee_idx ON geo_tline (annee,object_rid );
CREATE INDEX geo_tsurf_annee_idx ON geo_tsurf (annee,object_rid );

-- geometries
CREATE INDEX geo_commune_geom_idx ON geo_commune USING gist (geom);
CREATE INDEX geo_section_geom_idx ON geo_section USING gist (geom);
CREATE INDEX geo_subdsect_geom_idx ON geo_subdsect USING gist (geom);
CREATE INDEX geo_parcelle_geom_idx ON geo_parcelle USING gist (geom);
CREATE INDEX geo_parcelle_geomuf_idx ON geo_parcelle USING gist (geom_uf);
CREATE INDEX geo_subdfisc_geom_idx ON geo_subdfisc USING gist (geom);
CREATE INDEX geo_voiep_geom_idx ON geo_voiep USING gist (geom);
CREATE INDEX geo_numvoie_geom_idx ON geo_numvoie USING gist (geom);
CREATE INDEX geo_lieudit_geom_idx ON geo_lieudit USING gist (geom);
CREATE INDEX geo_batiment_geom_idx ON geo_batiment USING gist (geom);
CREATE INDEX geo_zoncommuni_geom_idx ON geo_zoncommuni USING gist (geom);
CREATE INDEX geo_tronfluv_geom_idx ON geo_tronfluv USING gist (geom);
CREATE INDEX geo_ptcanv_geom_idx ON geo_ptcanv USING gist (geom);
CREATE INDEX geo_borne_geom_idx ON geo_borne USING gist (geom);
CREATE INDEX geo_croix_geom_idx ON geo_croix USING gist (geom);
CREATE INDEX geo_symblim_geom_idx ON geo_symblim USING gist (geom);
CREATE INDEX geo_tpoint_geom_idx ON geo_tpoint USING gist (geom);
CREATE INDEX geo_tline_geom_idx ON geo_tline USING gist (geom);
CREATE INDEX geo_tsurf_geom_idx ON geo_tsurf USING gist (geom);
CREATE INDEX geo_label_geom_idx ON geo_label USING gist (geom);
-- attributes
CREATE INDEX geo_commune_tex2_idx ON geo_commune (tex2);
CREATE INDEX geo_section_idu_idx ON geo_section (idu);
CREATE INDEX geo_parcelle_idu_idx ON geo_parcelle (idu);
CREATE INDEX parcelle_geo_parcelle_idx ON parcelle (geo_parcelle);
CREATE INDEX geo_section_geo_commune_idx ON geo_section (geo_commune);
CREATE INDEX geo_parcelle_geo_section_idx ON geo_parcelle (geo_section);
CREATE INDEX geo_parcelle_comptecommunal_idx ON geo_parcelle (comptecommunal);
CREATE INDEX geo_parcelle_dvoilib_idx ON geo_parcelle (dvoilib);
CREATE INDEX geo_label_x_label_idx  ON geo_label (x_label );
CREATE INDEX geo_label_y_label_idx  ON geo_label (y_label );
CREATE INDEX geo_label_ogr_obj_lnk_layer_idx ON geo_label (ogr_obj_lnk_layer);

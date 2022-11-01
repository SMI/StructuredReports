SELECT umls.cui.cui, substring(umls.cui.cui_label, 1, 50), semehr.cui_count.count FROM semehr.cui_count INNER JOIN umls.cui ON umls.cui.cui = semehr.cui_count.cui ORDER BY semehr.cui_count.cui DESC;

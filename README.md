# OncoKB Curation Standard Operating Procedure

Please see the full OncoKB Curation Standard Operating Procedure at https://sop.oncokb.org/.

OncoKB is a Precision Oncology Knowledgebase that contains information about the biological effects and treatment implications of specific cancer genes and their somatic alterations. OncoKB is developed and maintained by the Knowledge Systems group in the Marie Josée and Henry R. Kravis Center for Molecular Oncology at Memorial Sloan Kettering Cancer Center (MSK).

In OncoKB, genes are classified as either oncogenes or tumor suppressors based on the curated evidence. Alterations included in OncoKB are protein-level changes that arise as a result of DNA-level variants in cancer: non-synonymous mutations, translocations, rearrangements / fusions, copy number amplifications and deletions. This document uses “Alterations”, “Mutations” and “Variants” interchangeably. All alterations in OncoKB are classified according to 1) their oncogenic effect and 2) their biological effect, based on the curated evidence (discussed in Chapter 1: Protocol 2: Variant Curation). In OncoKB, the oncogenic effect of an alteration is an evidence-based assertion that classifies whether the mutation is oncogenic, likely oncogenic, neutral or inconclusive. Additionally, in OncoKB, the biological effect of an alteration is an evidence-based assertion that classifies whether the mutation is gain-of-function, loss-of-function, neutral or inconclusive.

A subset of oncogenic alterations in cancer may act as biomarkers that may be diagnostic of a specific cancer, have prognostic implications or may be predictive of response to specific targeted therapies in specific cancer indications. If a cancer alteration in OncoKB is associated with clinical implications, these implications are also curated in OncoKB (discussed in Chapter 2: Curation of variant and tumor type specific clinical implications). Alterations with clinical implications are further assigned a Therapeutic (Chakravarty et al., 2017), level of evidence. Each Level of Evidence assignment in OncoKB defines the strength of the evidence that supports the alteration as being a therapeutic biomarker.

## Local dev

> [!WARNING]
> Please be very careful with using JavaScript. It is very important that all
> of our users can access the SOP's. JavaScript used to render the pdf files
> can break and prevent access to our SOP's.

### Run Locally

```sh
python3 -m http.server 4321
```

### Build Docker Image

```sh
docker build --platform=linux/amd64 -t oncokb/oncokb-sop:x.x.x .
```

### Run Docker Image

```sh
docker run --rm -p 4321:80 --name oncokb-sop oncokb/oncokb-sop:x.x.x
```

### Push Docker Image

```sh
docker push oncokb/oncokb-sop:x.x.x
```

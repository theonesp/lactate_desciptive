-- this query aggregates apacheadmissiondx in the categories defined by the clinical team
SELECT
  patientunitstayid,
  apacheadmissiondx,
  CASE
    WHEN apacheadmissiondx ='Abdomen only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Abdomen/extremity trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Abdomen/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Abdomen/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Abdomen/pelvis trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Abdomen/spinal trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Ablation or mapping of cardiac conduction pathway' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Abscess, neurologic' THEN 'Infx'
    WHEN apacheadmissiondx ='Abscess/infection-cranial, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Acid-base/electrolyte disturbance' THEN 'Renal'
    WHEN apacheadmissiondx ='Addisons disease' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Adrenal neoplasm (including pheochromocytoma)' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Adrenalectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Alcohol withdrawal' THEN 'TOX'
    WHEN apacheadmissiondx ='Amputation (non-traumatic)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Amyotrophic lateral sclerosis' THEN 'Neuro'
    WHEN apacheadmissiondx ='Anaphylaxis' THEN 'Allergy'
    WHEN apacheadmissiondx ='Anastomosis, vascular' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Anemia' THEN 'Hematology'
    WHEN apacheadmissiondx ='Aneurysm repair, ventricular' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, abdominal aortic' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, abdominal aortic; with dissection' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, abdominal aortic; with rupture' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, dissecting aortic' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, thoracic aortic' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, thoracic aortic; with dissection' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm, thoracic aortic; with rupture' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysm/pseudoaneurysm, other' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Aneurysms, repair of other (except ventricular)' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Angina, stable (asymp or stable pattern of symptoms w/meds)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Angina, unstable (angina interferes w/quality of life or meds are tolerated poorly)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Aortic and Mitral valve replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Aortic valve replacement (isolated)' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Apnea-sleep; surgery for (i.e., UPPP - uvulopalatopharyngoplasty)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Apnea, sleep' THEN 'Other'
    WHEN apacheadmissiondx ='Appendectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='ARDS-adult respiratory distress syndrome, non-cardiogenic pulmonary edema' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Arrest, respiratory (without cardiac arrest)' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Arteriovenous malformation, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Arthritis, rheumatoid' THEN 'Rheumotology'
    WHEN apacheadmissiondx ='Arthritis, septic' THEN 'Infx'
    WHEN apacheadmissiondx ='Asthma' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Atelectasis' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Atrial Septal Defect (ASD) Repair' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Biopsy, brain' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Biopsy, open lung' THEN 'Surgical'
    WHEN apacheadmissiondx ='Bladder repair of perforation/rupture' THEN 'Urology'
    WHEN apacheadmissiondx ='Bleeding-lower GI, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Bleeding-other GI, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Bleeding-upper GI, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Bleeding-variceal, surgery for (excluding vascular shunting-see surgery for portosystemic shunt)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Bleeding, GI from esophageal varices/portal hypertension' THEN 'GI'
    WHEN apacheadmissiondx ='Bleeding, GI-location unknown' THEN 'GI'
    WHEN apacheadmissiondx ='Bleeding, lower GI' THEN 'GI'
    WHEN apacheadmissiondx ='Bleeding, upper GI' THEN 'GI'
    WHEN apacheadmissiondx ='Blood transfusion reaction' THEN 'Hematology'
    WHEN apacheadmissiondx ='Bullectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Burn' THEN 'Trauma'
    WHEN apacheadmissiondx ='Burr hole placement' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='CABG alone, coronary artery bypass grafting' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG alone, redo' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG redo with other operation' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG redo with valve repair/replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with aortic valve replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with double valve repair/replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with mitral valve repair' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with mitral valve replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with other operation' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG with pulmonic or tricuspid valve repair or replacement ONLY.' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='CABG, minimally invasive; mid-CABG' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Cancer-colon/rectal, surgery for (including abdominoperineal resections)' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer-esophageal, surgery for (abdominal approach)' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer-laryngeal/tracheal, surgery for' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer-other GI tract, surgery for (i.e., hepatoma, gallbladder etc.)' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer-small intestinal, surgery for' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer-stomach, surgery for' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, colon/rectal' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, esophageal' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, laryngeal' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, lung' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, oral' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, oral/sinus, surgery for' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, other GI' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, pancreatic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, stomach' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Cancer, tracheal' THEN 'Oncologic'
    WHEN apacheadmissiondx ='CAPD catheter insertion' THEN 'Surgical'
    WHEN apacheadmissiondx ='Cardiac arrest (with or without respiratory arrest; for respiratory arrest see Respiratory System)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Cardiomyopathy' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Cardiovascular medical, other' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Cardiovascular surgery, other' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Cellulitis and localized soft tissue infections' THEN 'Infx'
    WHEN apacheadmissiondx ='Cellulitis and localized soft tissue infections, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Cerebrospinal fluid leak, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Cesarean section' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Chest pain, atypical (noncardiac chest pain)' THEN 'Other'
    WHEN apacheadmissiondx ='Chest pain, epigastric' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Chest pain, musculoskeletal' THEN 'Other'
    WHEN apacheadmissiondx ='Chest pain, respiratory' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Chest pain, unknown origin' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Chest thorax only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/abdomen trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/extremity trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/pelvis trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/spinal trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Chest/thorax only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='CHF, congestive heart failure' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Cholangitis' THEN 'GI'
    WHEN apacheadmissiondx ='Cholecystectomy/cholangitis, surgery for (gallbladder removal)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Coagulopathy' THEN 'Hematology'
    WHEN apacheadmissiondx ='Coma/change in level of consciousness (for hepatic see GI, for diabetic see Endocrine, if related to cardiac arrest, see CV)' THEN 'Neuro'
    WHEN apacheadmissiondx ='Complications for previous spinal cord surgery, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Complications of prev. peripheral vasc. surgery,surgery for (i.e.ligation of bleeder, exploration and evacuation of hematoma, debridement, pseudoaneurysms, clots, fistula, etc.)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Complications of previous GI surgery; surgery for (anastomotic leak, bleeding, abscess, infection, dehiscence, etc.)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Complications of previous open heart surgery (i.e. bleeding, infection etc.)' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Complications of previous open-heart surgery, surgery for (i.e. bleeding, infection, mediastinal rewiring,leaking aortic graft etc.)' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Congenital Defect Repair (Other)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Connective tissue disease (mixed)' THEN 'Rheumotology'
    WHEN apacheadmissiondx ='Contusion, myocardial (include r/o)' THEN 'Trauma'
    WHEN apacheadmissiondx ='Cosmetic surgery (all)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Cranial nerve, decompression/ligation' THEN 'Surgical'
    WHEN apacheadmissiondx ='Cranioplasty and complications from previous craniotomies' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='CVA, cerebrovascular accident/stroke' THEN 'Neuro'
    WHEN apacheadmissiondx ='Cyst, rupture ovarian' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Cystectomy for neoplasm' THEN 'Urology'
    WHEN apacheadmissiondx ='Cystectomy, other reasons' THEN 'Urology'
    WHEN apacheadmissiondx ='Defibrillator, automatic implantable cardiac; insertion of' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Devices for spine fracture/dislocation' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Diabetic hyperglycemic hyperosmolar nonketotic coma (HHNC)' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Diabetic ketoacidosis' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Dilatation (with general anesthesia)' THEN 'Other'
    WHEN apacheadmissiondx ='Dilatation (without general anesthesia)' THEN 'Other'
    WHEN apacheadmissiondx ='Diverticular disease' THEN 'GI'
    WHEN apacheadmissiondx ='Diverticular disease, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Drug withdrawal' THEN 'TOX'
    WHEN apacheadmissiondx ='Ectopic pregnancy (all)' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Efffusion, pericardial' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Effusions, pleural' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Embolectomy (with general anesthesia)' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Embolectomy (without general anesthesia)' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Embolus, pulmonary' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Emphysema/bronchitis' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Encephalitis' THEN 'Infx'
    WHEN apacheadmissiondx ='Encephalopathies (excluding hepatic)' THEN 'Neuro'
    WHEN apacheadmissiondx ='Encephalopathy, hepatic' THEN 'GI'
    WHEN apacheadmissiondx ='Endarterectomy (other vessels)' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Endarterectomy, carotid' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Endocarditis' THEN 'Infx'
    WHEN apacheadmissiondx ='Esophageal surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='Exenteration, pelvic-female' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Extremity only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Extremity only trauma, surgery for' THEN 'Trauma'
    WHEN apacheadmissiondx ='Extremity/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Extremity/face trauma, surgery for' THEN 'Trauma'
    WHEN apacheadmissiondx ='Extremity/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Extremity/multiple trauma, surgery for' THEN 'Trauma'
    WHEN apacheadmissiondx ='Face only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Face only trauma, surgery for' THEN 'Trauma'
    WHEN apacheadmissiondx ='Face/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Face/multiple trauma, surgery for' THEN 'Trauma'
    WHEN apacheadmissiondx ='Facial surgery (if related to trauma, see Trauma)' THEN 'Trauma'
    WHEN apacheadmissiondx ='Fistula/abscess, surgery for (not inflammatory bowel disease)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Fracture-pathological, non-union, non-traumatic, for fractures due to trauma see Trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Fusion-spinal/Harrington rods' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Gastrostomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Genitourinary medical, other' THEN 'Urology'
    WHEN apacheadmissiondx ='Genitourinary surgery, other' THEN 'Urology'
    WHEN apacheadmissiondx ='GI abscess/cyst' THEN 'GI'
    WHEN apacheadmissiondx ='GI Abscess/cyst-primary, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI medical, other' THEN 'GI'
    WHEN apacheadmissiondx ='GI obstruction' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI obstruction, surgery for (including lysis of adhesions)' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI perforation/rupture' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI perforation/rupture, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='GI vascular insufficiency' THEN 'GI'
    WHEN apacheadmissiondx ='GI vascular ischemia, surgery for (resection)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Graft for dialysis, insertion of' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, all other bypass (except renal)' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, all renal bypass' THEN 'Urology'
    WHEN apacheadmissiondx ='Graft, aorto-femoral bypass' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, aorto-iliac bypass' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, femoral-femoral bypass' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, femoral-popliteal bypass' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Graft, removal of infected vascular' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Grafting, skin (all)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Guillain-Barre syndrome' THEN 'Neurologic'
    WHEN apacheadmissiondx ='Head only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/abdomen trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/chest trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/extremity trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/pelvis trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Head/spinal trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Heart transplant' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Heat exhaustion/stroke' THEN 'Other'
    WHEN apacheadmissiondx ='Hematologic medical, other' THEN 'Hematology'
    WHEN apacheadmissiondx ='Hematologic surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='Hematoma subdural, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hematoma-epidural, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hematoma, epidural' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hematoma, subdural' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hematomas' THEN 'Trauma'
    WHEN apacheadmissiondx ='Hemorrhage (for gastrointestinal bleeding GI-see GI system) (for trauma see Trauma)' THEN 'Trauma'
    WHEN apacheadmissiondx ='Hemorrhage, intra/retroperitoneal' THEN 'Trauma'
    WHEN apacheadmissiondx ='Hemorrhage, postpartum' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Hemorrhage/hematoma-intracranial, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hemorrhage/hematoma, intracranial' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hemorrhage/hemoptysis, pulmonary' THEN 'Trauma'
    WHEN apacheadmissiondx ='Hemothorax' THEN 'Trauma'
    WHEN apacheadmissiondx ='Hepatic failure, acute' THEN 'GI'
    WHEN apacheadmissiondx ='Hepato-renal syndrome' THEN 'GI'
    WHEN apacheadmissiondx ='Hernia-hiatal, esophageal surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Herniorrhaphy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Hip replacement, total (non-traumatic)' THEN 'Orthopedic Surgery'
    WHEN apacheadmissiondx ='Hydrocephalus, obstructive' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Hypertension-pulmonary, primary/idiopathic' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Hypertension, uncontrolled (for cerebrovascular accident-see Neurological System)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Hyperthermia' THEN 'Other'
    WHEN apacheadmissiondx ='Hyperthyroid storm/crisis' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Hypoglycemia' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Hypothermia' THEN 'Other'
    WHEN apacheadmissiondx ='Hypothyroid/myxedema' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Hypovolemia (including dehydration, Do not include shock states)' THEN 'Other'
    WHEN apacheadmissiondx ='Hysterectomy for cancer with or without lymph node dissection' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Hysterectomy for other benign neoplasm/fibroids' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Infarction, acute myocardial (MI)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Infection/abscess, other surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Inflammatory bowel disease' THEN 'GI'
    WHEN apacheadmissiondx ='Inflammatory bowel disease, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Kidney transplant' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Kidney-pancreas transplant' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Knee replacement, total (non-traumatic)' THEN 'Orthopedic Surgery'
    WHEN apacheadmissiondx ='Laminectomy/spinal cord decompression (excluding malignancies)' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Leukemia, acute lymphocytic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Leukemia, acute myelocytic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Leukemia, chronic lymphocytic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Leukemia, chronic myelocytic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Leukemia, other' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Liver transplant' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Lung transplant, bilateral' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Lung transplant, single' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Lupus, systemic' THEN 'Rheumotology'
    WHEN apacheadmissiondx ='Lymph node dissection, pelvic or retroperitoneal (female)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Lymph node dissection, pelvic or retroperitoneal (male)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Lymphoma, Hodgkins' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Lymphoma, non-Hodgkins' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Lymphoma, non-Hodgkins, surgery for (including staging)' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Mastectomy (all)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Meningitis' THEN 'Infx'
    WHEN apacheadmissiondx ='Metabolic/endocrine medical, other' THEN 'Endocrine'
    WHEN apacheadmissiondx ='Metabolic/endocrine surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='MI admitted > 24 hrs after onset of ischemia' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Mitral valve repair' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Mitral valve replacement' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Monitoring, hemodynamic (pre-operative evaluation)' THEN 'Other'
    WHEN apacheadmissiondx ='Musculoskeletal medical, other' THEN 'MSK'
    WHEN apacheadmissiondx ='Myasthenia gravis' THEN 'Neurologic'
    WHEN apacheadmissiondx ='Myositis, viral' THEN 'Infx'
    WHEN apacheadmissiondx ='Near drowning accident' THEN 'Trauma'
    WHEN apacheadmissiondx ='Neoplasm-cranial, surgery for (excluding transphenoidal)' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Neoplasm-spinal cord, surgery or other related procedures' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Neoplasm, neurologic' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Nephrectomy (other reasons)' THEN 'Urology'
    WHEN apacheadmissiondx ='Nephrectomy for neoplasm' THEN 'Urology'
    WHEN apacheadmissiondx ='Neurologic medical, other' THEN 'Neuro'
    WHEN apacheadmissiondx ='Neurologic surgery, other' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Neuromuscular medical, other' THEN 'Neuro'
    WHEN apacheadmissiondx ='Neutropenia' THEN 'Hematology'
    WHEN apacheadmissiondx ='Nontraumatic coma due to anoxia/ischemia' THEN 'Neuro'
    WHEN apacheadmissiondx ='Obesity-morbid, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Obstruction due to neoplasm ,surgery for; (with or without ileal-conduit)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Obstruction due to nephrolithiasis, surgery for (with or without ileal-conduit)' THEN 'Urology'
    WHEN apacheadmissiondx ='Obstruction-airway (i.e., acute epiglottitis, post-extubation edema, foreign body, etc)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Obstruction/other, surgery for (with or without ileal conduit)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Oophorectomy with or without salpingectomy with or without lymph node dissection' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Orthopedic surgery, other' THEN 'Orthopedic Surgery'
    WHEN apacheadmissiondx ='Overdose, alcohols (bethanol, methanol, ethylene glycol)' THEN 'TOX'
    WHEN apacheadmissiondx ='Overdose, analgesic (aspirin, acetaminophen)' THEN 'TOX'
    WHEN apacheadmissiondx ='Overdose, antidepressants (cyclic, lithium)' THEN 'TOX'
    WHEN apacheadmissiondx ='Overdose, other toxin, poison or drug' THEN 'TOX'
    WHEN apacheadmissiondx ='Overdose, sedatives, hypnotics, antipsychotics, benzodiazepines' THEN 'TOX'
    WHEN apacheadmissiondx ='Overdose, street drugs (opiates, cocaine, amphetamine)' THEN 'TOX'
    WHEN apacheadmissiondx ='Palsy, cranial nerve' THEN 'Neuro'
    WHEN apacheadmissiondx ='Pancreatitis' THEN 'GI'
    WHEN apacheadmissiondx ='Pancreatitis, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Pancytopenia' THEN 'Hematology'
    WHEN apacheadmissiondx ='Papillary muscle rupture' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Parathyroidectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Pelvic relaxation (cystocele, rectocele, etc.)' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Pelvis/extremity trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Pelvis/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Pelvis/hip trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Pelvis/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Pelvis/spinal trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Pericardial effusion/tamponade' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Pericardiectomy (total/subtotal)' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Pericarditis' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Peritoneal lavage' THEN 'Surgical'
    WHEN apacheadmissiondx ='Peritonitis' THEN 'GI'
    WHEN apacheadmissiondx ='Peritonitis, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Pneumonia, aspiration' THEN 'Infx'
    WHEN apacheadmissiondx ='Pneumonia, bacterial' THEN 'Infx'
    WHEN apacheadmissiondx ='Pneumonia, fungal' THEN 'infx'
    WHEN apacheadmissiondx ='Pneumonia, other' THEN 'infx'
    WHEN apacheadmissiondx ='Pneumonia, parasitic (i.e., Pneumocystic pneumonia)' THEN 'infx'
    WHEN apacheadmissiondx ='Pneumonia, viral' THEN 'infx'
    WHEN apacheadmissiondx ='Pneumothorax' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Poisoning, carbon monoxide, arsenic, cyanide' THEN 'TOX'
    WHEN apacheadmissiondx ='Pre-eclampsia/eclampsia' THEN 'OB/GYN'
    WHEN apacheadmissiondx ='Prostatectomy, suprapubic; for benign prostatic hypertrophy' THEN 'Urology'
    WHEN apacheadmissiondx ='Prostatectomy, suprapubic; for cancer' THEN 'Urology'
    WHEN apacheadmissiondx ='Pulmonary valve surgery' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Renal bleeding' THEN 'Urology'
    WHEN apacheadmissiondx ='Renal failure, acute' THEN 'Renal'
    WHEN apacheadmissiondx ='Renal infection/abscess' THEN 'Infx'
    WHEN apacheadmissiondx ='Renal neoplasm, cancer' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Renal obstruction' THEN 'Urology'
    WHEN apacheadmissiondx ='Respiratory - medical, other' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Respiratory surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='Restrictive lung disease (i.e., Sarcoidosis, pulmonary fibrosis)' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Rhabdomyolysis' THEN 'Other'
    WHEN apacheadmissiondx ='Rhythm disturbance (atrial, supraventricular)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Rhythm disturbance (conduction defect)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Rhythm disturbance (ventricular)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Seizures (primary-no structural brain disease)' THEN 'Neuro'
    WHEN apacheadmissiondx ='Seizures-intractable, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Sepsis, cutaneous/soft tissue' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, GI' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, gynecologic' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, other' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, pulmonary' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, renal/UTI (including bladder)' THEN 'Infx'
    WHEN apacheadmissiondx ='Sepsis, unknown' THEN 'Infx'
    WHEN apacheadmissiondx ='Shock, cardiogenic' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Shunt-portosystemic, surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Shunt, peritoneal-venous; surgery for' THEN 'Surgical'
    WHEN apacheadmissiondx ='Shunts and revisions' THEN 'Surgical'
    WHEN apacheadmissiondx ='Sickle cell crisis' THEN 'Hematology'
    WHEN apacheadmissiondx ='Skin surgery, other' THEN 'Surgical'
    WHEN apacheadmissiondx ='Smoke inhalation' THEN 'TOX'
    WHEN apacheadmissiondx ='Spinal cord only trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Spinal cord surgery, other' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Spinal/extremity trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Spinal/face trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Spinal/multiple trauma' THEN 'Trauma'
    WHEN apacheadmissiondx ='Splenectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Stereotactic procedure' THEN 'Surgical'
    WHEN apacheadmissiondx ='Subarachnoid hemorrhage/arteriovenous malformation' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Subarachnoid hemorrhage/intracranial aneurysm' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Subarachnoid hemorrhage/intracranial aneurysm, surgery for' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Tamponade, pericardial' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Thoracotomy for benign tumor (i.e. mediastinal chest wall mass, thymectomy)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for bronchopleural fistula' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for esophageal cancer' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for lung cancer' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for lung reduction' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for other malignancy in chest' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for other reasons' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for pleural disease' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thoracotomy for thoracic/respiratory infection' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thrombectomy (with general anesthesia)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thrombectomy (without general anesthesia)' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thrombocytopenia' THEN 'Hematology'
    WHEN apacheadmissiondx ='Thrombosis, vascular (deep vein)' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Thrombus, arterial' THEN 'Vascular surgery'
    WHEN apacheadmissiondx ='Thyroid neoplasm' THEN 'Oncologic'
    WHEN apacheadmissiondx ='Thyroidectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Thyroidectomy and Parathyroidectomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Toxicity, drug (i.e., beta blockers, calcium channel blockers, etc.)' THEN 'TOX'
    WHEN apacheadmissiondx ='Tracheostomy' THEN 'Surgical'
    WHEN apacheadmissiondx ='Transphenoidal surgery' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Transplant, other' THEN 'Transplant Surgery'
    WHEN apacheadmissiondx ='Trauma medical, other' THEN 'Trauma'
    WHEN apacheadmissiondx ='Trauma surgery, other' THEN 'Trauma'
    WHEN apacheadmissiondx ='Tricuspid valve surgery' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Tumor removal, intracardiac' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='TURP, transurethral prostate resection for benign prostatic hypertrophy' THEN 'Urology'
    WHEN apacheadmissiondx ='TURP, transurethral prostate resection for cancer' THEN 'Urology'
    WHEN apacheadmissiondx ='Ulcer disease, peptic' THEN 'GI'
    WHEN apacheadmissiondx ='Vascular medical, other' THEN 'Cardiovascular'
    WHEN apacheadmissiondx ='Vascular surgery, other' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Vasculitis' THEN 'Rheumotology'
    WHEN apacheadmissiondx ='Vena cava clipping' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Vena cava filter insertion' THEN 'Vascular Surgery'
    WHEN apacheadmissiondx ='Ventricular Septal Defect (VSD) Repair' THEN 'Cardiac Surgery'
    WHEN apacheadmissiondx ='Ventriculostomy' THEN 'Neurosurgery'
    WHEN apacheadmissiondx ='Weaning from mechanical ventilation (transfer from other unit or hospital only)' THEN 'Pulmonary'
    WHEN apacheadmissiondx ='Whipple-surgery for pancreatic cancer' THEN 'Surgical'
    END AS apache_agg,
    apachedxgroup
FROM
  `physionet-data.eicu_crd_derived.apache_groups`

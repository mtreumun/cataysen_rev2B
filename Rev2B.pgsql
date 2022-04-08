--Validar polígonos terreno
UPDATE catastroaysen.pba_v2
SET estado = 'Terreno'
WHERE rev_terr is not NULL;

--Completar y validar columna Subgrupo_R de polígonos tipo poli V y E
UPDATE catastroaysen.pba_v2
SET subgrupo_r = subgrupo_e, estado = 'Coinciden'
WHERE subgrupo_r is NULL;

-- Validar coincidencia entre Subgrupo_E y Subgrupo_R
UPDATE catastroaysen.pba_v2
SET estado = 'Coinciden'
WHERE subgrupo_r = subgrupo_e and estado is null;

--Actualizar cambios estructurales cuando no hay cambio de especies
UPDATE catastroaysen.pba_v2
SET id_estruc='01', estructura= 'Adulto', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Perenne' or subgrupo_e = 'Adulto-Renoval-Perenne' or subgrupo_e = 'Renoval-Perenne') and subgrupo_r = 'Adulto-Perenne'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='02', estructura= 'Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Perenne' or subgrupo_e = 'Adulto-Renoval-Perenne' or subgrupo_e = 'Adulto-Perenne') and subgrupo_r = 'Renoval-Perenne'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='03', estructura= 'Adulto-Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Perenne' or subgrupo_e = 'Renoval-Perenne' or subgrupo_e = 'Adulto-Perenne') and subgrupo_r = 'Adulto-Renoval-Perenne'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='04', estructura= 'Achaparrado', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Adulto-Renoval-Perenne' or subgrupo_e = 'Renoval-Perenne' or subgrupo_e = 'Adulto-Perenne') and subgrupo_r = 'Achaparrado-Perenne'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='01', estructura= 'Adulto', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Caduco' or subgrupo_e = 'Adulto-Renoval-Caduco' or subgrupo_e = 'Renoval-Caduco') and subgrupo_r = 'Adulto-Caduco'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='02', estructura= 'Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Caduco' or subgrupo_e = 'Adulto-Renoval-Caduco' or subgrupo_e = 'Adulto-Caduco') and subgrupo_r = 'Renoval-Caduco'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='03', estructura= 'Adulto-Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Caduco' or subgrupo_e = 'Renoval-Caduco' or subgrupo_e = 'Adulto-Caduco') and subgrupo_r = 'Adulto-Renoval-Caduco'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='04', estructura= 'Achaparrado', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Adulto-Renoval-Caduco' or subgrupo_e = 'Renoval-Caduco' or subgrupo_e = 'Adulto-Caduco') and subgrupo_r = 'Achaparrado-Caduco'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='01', estructura= 'Adulto', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Mixto' or subgrupo_e = 'Adulto-Renoval-Mixto' or subgrupo_e = 'Renoval-Mixto') and subgrupo_r = 'Adulto-Mixto'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='02', estructura= 'Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Mixto' or subgrupo_e = 'Adulto-Renoval-Mixto' or subgrupo_e = 'Adulto-Mixto') and subgrupo_r = 'Renoval-Mixto'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='03', estructura= 'Adulto-Renoval', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Achaparrado-Mixto' or subgrupo_e = 'Renoval-Mixto' or subgrupo_e = 'Adulto-Mixto') and subgrupo_r = 'Adulto-Renoval-Mixto'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='04', estructura= 'Achaparrado', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Adulto-Renoval-Mixto' or subgrupo_e = 'Renoval-Mixto' or subgrupo_e = 'Adulto-Mixto') and subgrupo_r = 'Achaparrado-Mixto'  and estado is null;

UPDATE catastroaysen.pba_v2
SET id_estruc='04', estructura= 'Achaparrado', uso_tierra= concat(subuso,' ',estructura,' ',cobertura) , r_etapa_2b = 'PD', estado = 'Coinciden'
WHERE (subgrupo_e = 'Adulto-Renoval-Mixto' or subgrupo_e = 'Renoval-Mixto' or subgrupo_e = 'Adulto-Mixto') and subgrupo_r = 'Achaparrado-Mixto'  and estado is null;

-- Actualizar
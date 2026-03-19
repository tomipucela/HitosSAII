SELECT 
    M.nombre_actual AS municipio,
    PUV.uv AS radiacion_uv,
    PE.calidad_aire
FROM 
    Municipio M
JOIN 
    Prediccion_UV_Ciudad PUV ON M.nombre_actual = PUV.valor
JOIN 
    Prediccion_Eltiempo PE ON M.nombre_actual = PE.municipio
JOIN
    Provincias P ON M.codigo_provincia = P.codigo_provincia
WHERE 
    P.comunidad_autonoma = 'Cataluña/Catalunya';

-- Datos históricos de marzo del año pasado
SELECT 
    PA.municipio,
    PA.provincia,
    PA.temperatura_minima AS temp_min_aemet,
    PA.temperatura_maxima AS temp_max_aemet,
    PA.sensacion_termica_minima AS sens_min_aemet,
    PA.sensacion_termica_maxima AS sens_max_aemet,
    PE.temperatura_minima_media AS temp_min_eltiempo,
    PE.temperatura_maxima_media AS temp_max_eltiempo,
    PE.temperatura_media AS temp_media_eltiempo
FROM 
    Prediccion_AEMET PA
JOIN 
    Prediccion_Eltiempo PE
    ON PA.municipio = PE.municipio
WHERE 
    PA.municipio = 'Aguilar de Campoo'
    AND PA.provincia = 'Palencia';

--  Comparativa entre AEMET y Eltiempo para municipios de Valladolid con más de 5000 habitantes
SELECT 
    M.nombre_actual AS municipio,
    PA.temperatura_minima AS temp_min_aemet,
    PA.temperatura_maxima AS temp_max_aemet,
    PA.sensacion_termica_minima AS sens_min_aemet,
    PA.sensacion_termica_maxima AS sens_max_aemet,
    PE.temperatura_minima_media AS temp_min_eltiempo,
    PE.temperatura_maxima_media AS temp_max_eltiempo,
    PE.temperatura_media AS temp_media_eltiempo
FROM 
    Municipio M
JOIN 
    Prediccion_AEMET PA ON M.nombre_actual = PA.municipio
JOIN 
    Prediccion_Eltiempo PE ON M.nombre_actual = PE.municipio
JOIN
    Provincias P ON M.codigo_provincia = P.codigo_provincia
WHERE 
    P.nombre_provincia = 'Valladolid'
    AND M.poblacion_munipio > 5000;
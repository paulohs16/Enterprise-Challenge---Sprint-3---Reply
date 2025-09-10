-- generate_data_oracle.sql
-- Geração de massa de dados (~600 leituras por sensor)

DECLARE
  v_temp NUMBER(5,2);
  v_hum  NUMBER(5,2);
BEGIN
  FOR sensor IN 1..3 LOOP -- 3 sensores
    FOR i IN 1..600 LOOP   -- 600 leituras por sensor
      -- Gerar valores simulados (faixa normal com variação)
      v_temp := 22 + DBMS_RANDOM.VALUE(-5, 5);
      v_hum  := 50 + DBMS_RANDOM.VALUE(-15, 15);

      INSERT INTO readings (sensor_id, recorded_at, temperature_c, humidity_pct)
      VALUES (sensor, SYSTIMESTAMP - INTERVAL '1' MINUTE * i, v_temp, v_hum);
    END LOOP;
  END LOOP;
  COMMIT;
END;
/

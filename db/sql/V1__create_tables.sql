CREATE TABLE local_user (
  id CHAR(36) NOT NULL,
  username VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE remote_hub (
  id CHAR(36) NOT NULL,
  name VARCHAR(256) NOT NULL,
  address VARCHAR(256) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE remote_user (
  id CHAR(36) NOT NULL,
  remote_id VARCHAR(36) NOT NULL,
  remote_hub_id VARCHAR(36) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (remote_hub_id)
    REFERENCES remote_hub(id)
    ON DELETE CASCADE
);


CREATE TABLE stream (
  id CHAR(36) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE stream_content (
  stream_id CHAR(36) NOT NULL,
  sequence INTEGER NOT NULL,
  local_user_id CHAR(36) NULL,
  remote_user_id CHAR(36) NULL,
  is_remote_user BOOLEAN NOT NULL,
  PRIMARY KEY(stream_id,sequence),
  FOREIGN KEY (stream_id)
    REFERENCES stream(id)
    ON DELETE CASCADE,
  FOREIGN KEY(local_user_id)
    REFERENCES local_user(id)
    ON DELETE CASCADE,
  FOREIGN KEY(remote_user_id)
    REFERENCES remote_user(id)
    ON DELETE CASCADE
);



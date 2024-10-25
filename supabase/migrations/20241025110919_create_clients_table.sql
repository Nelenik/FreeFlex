create table clients (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID,
  company_name VARCHAR(255),
  email VARCHAR(255),
  phone_num VARCHAR(255),
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
)
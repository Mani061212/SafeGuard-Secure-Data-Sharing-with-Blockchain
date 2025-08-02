SafeGuard: Secure Data Sharing with Proxy Re-Encryption and Blockchain

🛡 Overview
SafeGuard is a secure data-sharing platform that integrates proxy re-encryption with Ethereum blockchain to ensure data confidentiality, integrity, and transparency. 
This full-stack application features a user-friendly React-based UI, and demonstrates:

- 100% data confidentiality across 1,000+ transactions

- 25% reduction in user interaction time using optimized UI and graph algorithms


🚀 Features

🔐 Secure Data Sharing: Enables secure delegation of decryption rights using proxy re-encryption.

⛓ Blockchain Integration: Leverages Ethereum and Solidity for immutable, verifiable transaction records.

⚡ Optimized UI: React interface designed for efficiency and usability.

📈 Scalable Architecture: Efficient handling of 1,000+ secure transactions with no data leaks.


🛠 Technologies Used

Layer	Technologies : 
Backend	     - Java, Spring Boot
Frontend	   - React, JavaScript, HTML, CSS
Blockchain   - Ethereum, Solidity, Truffle, Ganache
Database	   - MySQL
Optimization - Graph Algorithms


⚙️ Prerequisites

Before you begin, ensure the following are installed:

Java JDK 17+

Node.js and npm

MySQL

Ganache (for local blockchain)

Truffle (for smart contract deployment)

Git

NetBeans (optional, for Java development)


📦 Setup Instructions

1. Clone the Repository

git clone https://github.com/Mani061212/safeguard.git
cd safeguard

2. Backend Setup (Spring Boot)
Open the backend project in NetBeans or any Java IDE.

Create a MySQL database named:

nginx
safeguard_db

Update the credentials in src/main/resources/application.properties:

properties
spring.datasource.url=jdbc:mysql://localhost:3306/safeguard_db
spring.datasource.username=your-username
spring.datasource.password=your-password

Run the backend server:

./mvnw spring-boot:run

3. Blockchain Setup
   
Start Ganache to simulate the local Ethereum blockchain.

Deploy the smart contracts:

cd blockchain
truffle migrate --network ganache
Update the contract address in src/main/resources/blockchain.properties.

4. Frontend Setup (React)
Navigate to the frontend directory:

cd frontend

Install dependencies:
npm install

Start the React app:
npm start
Access the frontend at: http://localhost:3000


🧪 Usage Guide

Register/Login via the web interface.

Upload Data: Securely upload your data through the dashboard.

Share Securely: Use proxy re-encryption to delegate decryption rights.

Verify Transactions: All actions are logged immutably on the Ethereum blockchain.


📁 Project Structure

safeguard/
├── src/           → Java backend (Spring Boot)
├── frontend/      → React frontend
├── blockchain/    → Solidity smart contracts and Truffle configs
└── docs/          → Additional documentation (if any)
🔮 Future Improvements
Implement multi-user role-based access control

Optimize smart contract gas fees for large transactions

Extend support for other blockchains like Polygon


📚 Publication
Built as part of a B.Tech project at Sri Indu College of Engineering and Technology
Published in the International Journal of Computer Applications
ISBN: 978-81-971735-6-1


📬 Contact
📧 Email: 21d41a05q2@gmail.com

💼 LinkedIn: linkedin.com/in/upputharla-manikanta

🐙 GitHub: github.com/Mani061212

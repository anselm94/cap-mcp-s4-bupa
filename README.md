# CAP-based S/4HANA Business Partner MCP Server (for mocking)

This project is an CAP-based MCP server that provides a subset of the S/4HANA Business Partner API. It is intended to be used as a mock server for testing and development purposes.

## Getting Started

1. Clone the repository:

   ```bash
   git clone github.com/anselm94/cap-mcp-s4-bupa.git
   ```

2. Install dependencies:

   ```bash
   npm install
   ```

3. Start the server:

   ```bash
   npm start
   ```

4. Access the MCP server at `http://localhost:4005/mcp/business-partner` (or the port specified in the `.env` file). By default, no authentication is required.

## Entities Exposed

| Entity              | Description                                         |
| ------------------- | --------------------------------------------------- |
| **Customers**       | Represents business partner customers.              |
| **CustomerAddresses** | Represents addresses of business partner customers. |

## License

[Apache License 2.0](./LICENSE).

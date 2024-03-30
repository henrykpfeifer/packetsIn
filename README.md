# IP Packet Monitor Script

This Bash script monitors incoming IP packets and displays the current time along with a star for each packet received. It can be useful for network diagnostics or tracking network activity.

## Prerequisites

- **nstat**: Ensure that the `nstat` command-line utility is installed. You can typically find it in the `net-tools` package.

## Usage

1. Make the script executable:
   ```bash
   chmod +x ip_packet_monitor.sh
   ```

2. Run the script:
   ```bash
   ./ip_packet_monitor.sh
   ```

3. The script will continuously display the current time and a star for each incoming IP packet received in the last 60 seconds.

## Example Output

```
20:45:00 ** (two stars for two incoming packets)
20:46:00 **** (four stars for four incoming packets)
...
```

## Notes

- Adjust the sleep interval (currently set to 60 seconds) as needed.
- Customize the script further based on your requirements.

Feel free to modify and enhance this script according to your specific use case. If you have any questions or need further assistance, don't hesitate to ask!

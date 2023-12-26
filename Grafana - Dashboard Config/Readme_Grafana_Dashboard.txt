
## Grafana
## PromeQL  :

# Check Instance on All Server Hypervisor
SUM({Server=~".+", job="Hypervisor"})

# Check Instance on Spesific Server Hypervisor
Sum({Server=~"Server01", job="Hypervisor"})


# Create visual type Tabel
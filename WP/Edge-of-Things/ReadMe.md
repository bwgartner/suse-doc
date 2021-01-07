
Placeholder for outline of whitepaper around

- Device management of Sensor/Edge/Gateways
- Enabling controller funcitons
- Seeding data flow pipelines
- Implementing AI/ML/DL model flows

NOTE: John vV - The outline below is "stream of conciousness" and may be more than one paper or potentially an e-book.  The goal
    is to put yourself in the role of an Edge/IoT customer/partner with low-level knowledge of K8s.  What questions would you have?


<b>Summary</b>
- Transition of Operations Technology to IT to achieve scale and agility
- Advantages 0f Kubernetes and containers at the Edge (security policy enforcement, shorter development cycles, efficiency, 
        scalability, consolidation of legacy platforms, etc.)
- Analyst data on the move to containers
- Simplify/Modernize/Accelerate

 <b>Kubernetes and Containers</b>
 - Brief explanation on how containers differ from VMs and bare metal and advantages of each approach
 - Brief explanation on how Kubernetes works with links to references
 - What does a container/edge workflow look like?
    - Transition from waterfall to agile
    - How do I deploy an application?   What is a Helm Chart?
    
 <b>Advantages of Rancher vs. other approaches</b> - (leave out specific companies - IHV's won't want to throw shade directly)   
- vs. all-in one suites (e.g. OpenShift or Tanzu) complexity & cost
- vs. cloud vendor lock-in (e.g. EKS)
- Agnostic to where containers sit
- Rancher options:   K8s vs. K3s.  Why choose one over the other for Edge?

<b>For those coming from a Windows IoT Environment</b>
- Overview of the journey to containerized edge devices
- Options:  Virtualized/hybrid vs. Windows worker nodes
- How to virtualize a Windows IoT Server on KVM.  How to virtualize Windows Server 2019 on KVM.  Description/example of Cloud-init 
- How to enable a Windows container hosts with Rancher

<b>K3s Installation Overview</b> (point to Rancher installation guides already written.).  Possible videos of installation process.
- Options:  laptop, cloud, single server, production, virtualized (vSphere or SLES KVM).   
    - +/- for each approach (HA, ease of install, 
        "production worthiness", "migratability") 
        possibly table with links to installation guides for each approach
- Networking considerations (test bed vs. production, local DNS Server, security, etc.)
- Options:  How to add persistent storage to K3s (on devices and via network)
- How to add ARM-based nodes including Pi and nVidia endpoints.   How to 'taint' them.
- Verify operation

<b>Operations</b>
- <b>Security</b>  
    - What are best practices for security?
- <b>Device Management</b>
    - How do you monitor all of the nodes in the Rancher interface?
    - How do you securely add a node to the cluster?
    - How do you plan for instances where you lose network connectivity?
    - What happens when you temporarily lose power and then it comes back up?
    - How do I backup my configurations?
    - How do I update my configurations with zero downtime? How do I roll-back if the update does not work?
    - How do I connect to a hypercloud vendor (Google, AWS, Azure)?

<b>Developer</b>
- How do I decide what belongs in the near Edge Node vs. HQ on prem/hypercloud? 
    - Databases, filtering, vision, analytics, etc.?
    - Network latency, ingress/egress costs?, network bandwidth.
- How do I interface with existing sensors?
- How do I interface with different protocol/communication stacks (MQTT, RS-232, Zigbee, BlueTooth, 5G, etc.)
    - What tools can I use?
    - CI/CD Pipeline: should we talk about Fleet?

<b>Call to Action</b>
- Setup a lab environment
- Install K3s
- Do this edge tutorial (hopefully existing).  Could be Pi or Jetson Nano-based.

 <b>Conclusion</b>   


# Managing Data & Working with Volumes

## Key Topics

- Understanding Different Kinds of Data
- Images, Containers & Volumes
- Using Arguments & Environment Variables

## Different Kinds of Data

![data](./docs/data.excalidraw.png)

## Volumes

### Understanding Volumes

Volumes are _folders on the host machines_ hard drive which are _mounted_ ("made available", mapped) _into containers_

![volumes](./docs/volumes.excalidraw.png)

Volumes persist if a container shuts down. If a container (re-)starts and mounts a volume, any data inside of that volume is available in the container.<br />
A container can write data into a volume and read data from it.

## Types of External Data Storages

<table>
  <thead>
    <tr>
      <th colspan=2>Volumes</th>
      <th>Bind Mounts</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Anonymous Volumes</strong></td>
      <td><strong>Named Volumes</strong></td>
      <td></td>
    </tr>
    <tr>
      <td colspan=2>Docker sets up a folder/ path on the host machine, exact location is unknown. Managed via <em>docker volume</em> commands</td>
      <td>Predefined folder/ path on<br />the host machine.</td>      
    </tr>
    <tr>
      <td colspan=3>A defined path in the container is mapped to the created volume/ mount. For example: <em>/some-path</em> on the hosting machine is mapped to <em>/app/data</em>.</td>
    </tr>
    <tr>
      <td></td>
      <td>Great for data which should be persistent but which you don’t need to edit directly.</td>
      <td>Great for persistent, editable data. <em>(e.g. source code)</em>.</td>
    </tr>
  </tbody>
</table>

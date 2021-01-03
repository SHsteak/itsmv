INSERT INTO nav (_name, name, url, icon) VALUES
     --('CSidebarNavItem', 'Dashboard', '/dashboard', 'cil-speedometer'),
     ('CSidebarNavItem', 'Server', '/server', 'cil-laptop'),
     ('CSidebarNavItem', 'Monitoring', '/monitoring', 'cil-monitor'),
     --('CSidebarNavItem', 'Backup', '/backups', 'cil-data-transfer-down'),
     --('CSidebarNavItem', 'Chart', '/vmsChart', 'cil-chart-pie'),
     ('CSidebarNavItem', 'Calendar', '/calendar', 'cil-calendar'),
     ('CSidebarNavItem', 'Editor', '/editor', 'cil-pencil'),
     ('CSidebarNavItem', 'Settings', '/settings', 'cil-settings');


INSERT INTO header (url, name) VALUES
     ('https://github.com/SHsteak', 'SH-github'),
     ('https://www.notion.so/choshsh/9019293e1d86475fb19fe0a5d1149f0d', 'SH-notion');

INSERT INTO monitoring (url, name, height) VALUES
     ('http://choshsh.koreacentral.cloudapp.azure.com:3000/d/hb7fSE0Zz/choshsh-monitoring-sample?orgId=1&refresh=1m', 'Grafana', '2200'),
     ('http://choshsh.koreacentral.cloudapp.azure.com:3000/d/Vw_UfM-Gk/alert?orgId=1&refresh=1m', 'Grafana-Alert', '1000'),
     ('http://choshsh.koreacentral.cloudapp.azure.com:5601/app/dashboards#/view/e985b760-4d02-11eb-b6c2-270578c3d43b?embed=true&_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-15m%2Cto%3Anow))&show-query-input=true', 'Kibana', '1300');

INSERT INTO dept (dept_cd, dept_nm) VALUES
     ('D001', '����1��'),
     ('D002', '����2��');

INSERT INTO location (location_cd, location_nm) VALUES
     ('L001', '����'),
     ('L002', '����');

INSERT INTO opr (opr_cd, opr_nm) VALUES
     ('O001', '���޻��'),
     ('O002', '����'),
     ('O003', '�����');

INSERT INTO usage (usage_cd, usage_nm) VALUES
     ('U001', '�'),
     ('U002', '����'),
     ('U003', '��ȸ');

INSERT INTO os (os_cd, os_nm, os_detail) VALUES
     ('OS001', 'Windows', 'Windows Server 2016 Standard'),
     ('OS002', 'Windows', 'Windows Server 2019 Standard'),
     ('OS003', 'Linux', 'CentOS-8.3.2011'),
     ('OS004', 'Linux', 'SUSE Linux Enterprise Server 12 SP5'),
     ('OS005', 'Storage', '-');

INSERT INTO server (server_nm, hostname, dept_cd, mng_empl_nm, location_cd, location_detail, opr_cd, usage_cd, ip_addr, os_cd, maker_nm, maker_model_nm, warranty, buy_date, price, serial, spec) VALUES
     ('���� ���� #1', 'server-01-op', 'D001', '������', 'L001', '���� 7F ������', 'O001', 'U001', '123.123.123.1', 'OS002', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN01', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #2', 'server-02-op', 'D001', '������', 'L001', '���� 7F ������', 'O001', 'U002', '123.123.123.2', 'OS002', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN02', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #3', 'server-03-op', 'D001', '������', 'L001', '���� 7F ������', 'O002', 'U003', '123.123.123.3', 'OS003', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN03', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #4', 'server-04-op', 'D001', '������', 'L001', '���� 7F ������', 'O001', 'U001', '123.123.123.4', 'OS004', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN04', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #5', 'server-05-op', 'D001', '������', 'L001', '���� 7F ������', 'O002', 'U002', '123.123.123.5', 'OS001', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN05', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #6', 'server-06-op', 'D001', '������', 'L001', '���� 7F ������', 'O001', 'U001', '123.123.123.6', 'OS002', 'HP', 'HPE ProLiant DL360 Gen9', '3', '2020-01-03', '50000', 'SN06', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB / 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #7', 'server-07-op', 'D002', '������', 'L002', '���� 2F ������', 'O001', 'U001', '124.123.123.7', 'OS004', 'DELL', 'PowerEdge T630', '3', '2020-01-03', '50000', 'SN07', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB * 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #8', 'server-08-op', 'D002', '������', 'L002', '���� 2F ������', 'O003', 'U002', '124.123.123.8', 'OS002', 'DELL', 'PowerEdge T630', '3', '2020-01-03', '50000', 'SN08', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB * 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���� #9', 'server-09-op', 'D002', '������', 'L002', '���� 2F ������', 'O001', 'U001', '124.123.123.9', 'OS002', 'DELL', 'PowerEdge T630', '3', '2020-01-03', '50000', 'SN09', 'Intel�� Xeon�� Gold 6328H Processor / DDR4-3200 128GB / 500GB * 2EA / RAID 1 / SATA 3.5inch / 5U / 10Gb Ethernet Network Adapter'),
     ('���� ���丮�� #1', 'storage-01', 'D001', '������', 'L001', '���� 7F ������', 'O001', 'U001', '125.123.123.10', 'OS005', 'HP', 'HPE Nimble Storage', '3', '2020-01-03', '50000', 'SN10', 'SSD 1TB * 12EA / SAN port * 4EA');

INSERT INTO editor (title, keyword, content, reg_date) VALUES
     ('�Խ��� �����ϱ�', '�⺻, �Ұ�', '<h3>�ȳ��ϼ���, �������Դϴ�.</h3><p>&nbsp;</p><p>�̰��� ������ ������ ������ �Խ����Դϴ�.</p><p>&nbsp;</p><p>�Ʒ��� ���� ������ �н��ϴ� ������ Ȯ���� �� �ִ� �ּ��Դϴ�.</p><figure class="table"><table><tbody><tr><td>Github �ּ�</td><td>https://github.com/SHsteak</td></tr><tr><td>��Ʈ������ �ּ�</td><td>https://www.notion.so/choshsh/9019293e1d86475fb19fe0a5d1149f0d</td></tr></tbody></table></figure><p>&nbsp;</p><p>�����մϴ�.</p>', now());

INSERT INTO calendar (calendar_date, start_time, end_time, is_error, reg_user, comment) VALUES
     ('2021-01-01', '16:37', '16:40', 'Y', '������', ''),
     ('2021-01-04', '19:00', '19:30', 'Y', '������', '���� ���Դϴ�');

INSERT INTO calendar_child  (calendar_date, server_id, comment) VALUES
     ('2021-01-01', '1', '��ũ Fault 1EA'),
     ('2021-01-04', '3', '�޸� Warning 1EA'),
     ('2021-01-04', '4', 'ũ��Ƽ�� ���� (�µ�)');

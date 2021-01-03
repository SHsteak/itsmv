package com.itsmv.api.server;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.IntStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.itsmv.api.util.ExcelUtil;

@Service
public class ServerSvc {

	@Autowired
	private ServerRepo serverRepo;

	List<ServerEntity> list() {
		List<ServerEntity> list = new ArrayList<>();
		Iterable<ServerEntity> it = serverRepo.findAll();
		it.forEach(o -> {
			o.setDeptNm(o.getDeptEntity().getDeptNm());
			o.setLocationNm(o.getLocationEntity().getLocationNm());
			o.setOprNm(o.getOprEntity().getOprNm());
			o.setUsageNm(o.getUsageEntity().getUsageNm());
			o.setOsNm(o.getOsEntity().getOsNm());
			o.setOsDetail(o.getOsEntity().getOsDetail());
			list.add(o);
		});
		return list;
	}

	@SuppressWarnings("unchecked")
	void excel(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String[][] dKey = { { "id", "������ȣ" }, { "locationNm", "�����" }, { "serverNm", "������" }, { "hostname", "ȣ��Ʈ��" },
				{ "oprNm", "� ����" }, { "usageNm", "�뵵" }, { "ipAddr", "���� IP" }, { "osNm", "OS�迭" },
				{ "osDetail", "OS��" }, { "makerNm", "������" }, { "makerModelNm", "�𵨸�" }, { "serial", "�ø����ȣ" },
				{ "spec", "����" }, { "warranty", "��������" }, { "locationDetail", "��ġ���" }, { "deptNm", "���� �μ�" },
				{ "mngEmplNm", "���� �����" }, { "buyDate", "��ġ����" } };
		String[] shArr = { "����", "����" };

		ExcelUtil exu = new ExcelUtil("��������_����Ʈ");
		for (String s : shArr) {
			exu.addSheet(s);
			/* ��� */
			exu.addRow();
			for (int i = 0; i < dKey.length; i++) {
				exu.addCell(i, dKey[i][1]);
			}
			exu.setFilter();
			exu.getSh().createFreezePane(5, 1);
		}

		/* �ٵ� */
		ObjectMapper mapper = new ObjectMapper();
		for (ServerEntity o : this.list()) {
			exu.setSh(exu.getWb().getSheet(o.getLocationEntity().getLocationNm()));
			exu.addRow();
			HashMap<String, Object> m = mapper.convertValue(o, HashMap.class);
			for (int i = 0; i < dKey.length; i++) {
				exu.addCell(i, m.get(dKey[i][0]) == null ? "-" : m.get(dKey[i][0]).toString());
			}
		}
		/* �ʺ� ���� */
		IntStream.range(0, shArr.length).forEach(i -> {
			exu.setWidth(exu.getWb().getSheetAt(i).getRow(0), i);
		});
		/* 1�� ���� ���� */
		exu.setFilter();

		/* �ٿ�ε� */
		exu.download(req, res);
	}
}

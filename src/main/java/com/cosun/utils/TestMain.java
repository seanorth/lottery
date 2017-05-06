package com.cosun.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;

/**
 * 将byte[]转化成了String，方便拼接字符串。 下面是测试方法。
 * 
 * @author sparrow
 * 
 */
public class TestMain {

	private static void print(String ip, String printContent) {
		Socket socket = null;
		try {
			socket = new Socket();
			socket.connect(new InetSocketAddress(ip, 9100), 4000);

			System.out.println("CashierDesk=====小票机连接成功，IP：" + ip);

			OutputStream os = socket.getOutputStream();

			// 切纸命令
			String text = printContent + "\n\n\n\n\n\n";
			byte[] CMD_INIT = { 27, 64 };
			os.write(CMD_INIT);
			os.write(text.getBytes("GB2312"));
			final byte[] CMD_CUT = { 0x1D, 0x56, 0x01 };
			os.write(CMD_CUT);
			System.out.println("CashierDesk=====小票机打印完成，IP：" + ip);

		} catch (UnknownHostException e) {

			System.out.println("CashierDesk=====小票机连接失败，IP：" + ip);
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("CashierDesk=====小票机连接失败，IP：" + ip);
			e.printStackTrace();
		} finally {
			if (socket != null) {
				try {
					socket.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void main(String[] args) {
		String ip = "192.168.0.1";
		String printContent = "";

		printContent += "********************倍数放大********************\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "********************加粗加粗********************\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += PrinterCmdUtils.boldOn();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.boldOff();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += PrinterCmdUtils.boldOn();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.boldOff();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += PrinterCmdUtils.boldOn();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.boldOff();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "********************改变字体********************\n";

		printContent += "改变字体（仅支持英文，数字）\n";
		printContent += PrinterCmdUtils.fontB();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.fontA();
		printContent += "\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += PrinterCmdUtils.fontB();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.fontA();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += PrinterCmdUtils.fontB();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.fontA();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += PrinterCmdUtils.fontB();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.fontA();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "********************反显打印********************\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += PrinterCmdUtils.reversePrint();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.reverseCancel();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += PrinterCmdUtils.reversePrint();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.reverseCancel();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += PrinterCmdUtils.reversePrint();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.reverseCancel();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "********************汉字间距1*******************\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += PrinterCmdUtils.margin1();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += PrinterCmdUtils.margin1();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += PrinterCmdUtils.margin1();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "********************汉字间距2*******************\n";

		printContent += "纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.longitudinalDouble();
		printContent += PrinterCmdUtils.margin2();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.transverseDouble();
		printContent += PrinterCmdUtils.margin2();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		printContent += "横向，纵向放大两倍（汉字，英文，数字都支持）\n";
		printContent += PrinterCmdUtils.bothDouble();
		printContent += PrinterCmdUtils.margin2();
		printContent += "我是中文\nI'm english\n54123456\n";
		printContent += PrinterCmdUtils.marginCancle();
		printContent += PrinterCmdUtils.ZoomCancel();
		printContent += "\n";

		print(ip, printContent);
	}

}
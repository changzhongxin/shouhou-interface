package com.shouhou.util;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.Result;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.HashMap;

/**
 * @author Alex
 * @date 2018/3/16
 * @description 使用zxing解析二维码
 */
public class ParseQRCode {
    public static void main(String[] args) {
        try {
            MultiFormatReader formatReader = new MultiFormatReader();
            File file = new File("C:\\Users\\Alexs\\Desktop\\blogimages\\qrcode.png");
            BufferedImage image = ImageIO.read(file);
            BinaryBitmap binaryBitmap = new BinaryBitmap(new HybridBinarizer(new BufferedImageLuminanceSource(image)));

            //定义二维码的参数
            HashMap hints = new HashMap();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            Result result = formatReader.decode(binaryBitmap, hints);

            System.out.println("解析结果：" + result.toString());
            System.out.println("二维码格式类型：" + result.getBarcodeFormat());
            System.out.println("二维码文本内容：" + result.getText());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}

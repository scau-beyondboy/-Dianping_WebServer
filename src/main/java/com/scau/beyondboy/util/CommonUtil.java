package com.scau.beyondboy.util;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/23
 * Time: 0:41
 */
public class CommonUtil
{

    /**
     * 经度
     * 纬度
     * 搜索半径
     *
     * 返回最大最小的经纬度
     *
     * 地球的周长是24901英里  1英里等于1609米
     */
    public static double[] getAround(double lat, double lon, int raidus)
    {

        Double latitude = lat;
        Double longitude = lon;
        //计算地球一周中每一度占多少米
        Double degree = (24901 * 1609) / 360.0;
        //计算纬度上变化1米是多少度
        Double dpmLat = 1 / degree;
        //获取搜索半径在纬度上的度数变化
        Double radiusLat = dpmLat * raidus;
        //获取最小的纬度和最大的纬度
        Double minLat = latitude - radiusLat;
        Double maxLat = latitude + radiusLat;

        //计算定位的地点上小圆上的距离变化   用于=获取经度
        Double mpdLng = degree * Math.cos(latitude * (Math.PI / 180));
        Double dpmLng = 1 / mpdLng;//经度上变化一米是多少度
        Double radiusLng = dpmLng * raidus;
        //获取的最小和最大的经度
        Double minLng = longitude - radiusLng;
        Double maxLng = longitude + radiusLng;
        return new double[] { minLat, minLng, maxLat, maxLng };
    }
}

package com.xloger.okhttptest

/**
 * Created on 2020/11/25 0025 15:53.
 * Author: xloger
 * Email:phoenix@xloger.com
 */
open class TimeLineHelper {
    protected lateinit var timeLineLayout: TimeLineLayout

    open fun init(timeLineLayout: TimeLineLayout) {
        this.timeLineLayout = timeLineLayout
    }
}
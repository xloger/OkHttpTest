package com.xloger.okhttptest

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.Message
import kotlin.concurrent.thread

class MainActivity : AppCompatActivity() {

    companion object {
        val TEST_MSG = 1
    }

    var handler = object :Handler(Looper.getMainLooper()) {
        override fun handleMessage(msg: Message) {
            when(msg.what) {
                TEST_MSG -> FrameHelper.useTest()
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val tlLayout = findViewById<TimeLineLayout>(R.id.main_time_line_layout)
        tlLayout.initHandler(handler)
        thread {
            Thread.sleep(100)
            handler.sendEmptyMessage(TEST_MSG)

        }

    }
}
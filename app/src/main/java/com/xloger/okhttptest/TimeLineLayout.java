package com.xloger.okhttptest;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;


/**
 * Created on 2020/11/25 0025 16:02.
 * Author: xloger
 * Email:phoenix@xloger.com
 */
public class TimeLineLayout extends androidx.appcompat.widget.AppCompatTextView {

    private Handler mainHandler;

    public TimeLineLayout(Context context) {
        this(context, null);
    }


    public TimeLineLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }


    public TimeLineLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);

        init(context);
    }

    private void init(Context context) {
        Frame1Helper.INSTANCE.init(this);
        Frame2Helper.INSTANCE.init(this);
        FrameHelper.INSTANCE.init(this);
        Frame3Helper.INSTANCE.init(this);
    }

    public void initHandler(Handler mainHandler) {
        this.mainHandler = mainHandler;
    }
}

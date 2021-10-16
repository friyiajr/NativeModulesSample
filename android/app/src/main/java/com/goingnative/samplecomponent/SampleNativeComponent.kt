package com.goingnative.samplecomponent

import android.annotation.SuppressLint
import android.widget.LinearLayout
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.UIManagerHelper
import com.goingnative.R

@SuppressLint("ViewConstructor")
class SampleNativeComponent(context: ThemedReactContext) : LinearLayout(context) {
    private var rContext: ThemedReactContext = context

    init {
        inflate(rContext, R.layout.sample_component, this)
        this.setOnClickListener {
            val surfaceId = UIManagerHelper.getSurfaceId(rContext)
            UIManagerHelper.getEventDispatcherForReactTag(rContext, id)
                    ?.dispatchEvent(SampleNativeComponentEvent(surfaceId, id))
        }
    }
}
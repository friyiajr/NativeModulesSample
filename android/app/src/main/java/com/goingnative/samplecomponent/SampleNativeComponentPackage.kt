package com.goingnative.samplecomponent

import com.facebook.react.ReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ViewManager

import java.util.*

class SampleNativeComponentPackage : ReactPackage {

    override fun createViewManagers(reactContext: ReactApplicationContext)
            : MutableList<ViewManager<*, *>>
    {
        return mutableListOf(
                SampleNativeComponentViewManager()
        )
    }

    override fun createNativeModules(reactContext: ReactApplicationContext): MutableList<NativeModule> {
        return Collections.emptyList()
    }
}
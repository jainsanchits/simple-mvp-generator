package ${packageName}.base;

import ${packageName}.base.IContext;

import android.content.Context;

/**
 * Created by raj on 15/04/18.
 */
interface IContext {
    val appContext: Context?
    val activityContext: Context?
}

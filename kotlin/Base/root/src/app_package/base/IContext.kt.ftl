package ${packageName}.base;

import ${packageName}.base.IRecyclerBaseViewToPresenter;
import ${packageName}.base.IContext;
import ${packageName}.base.IShowError;

import android.content.Context;

/**
 * Created by raj on 15/04/18.
 */
interface IContext {
    val appContext: Context?
    val activityContext: Context?
}

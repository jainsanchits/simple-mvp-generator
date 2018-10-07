package ${packageName}.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.content.Intent;

import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

/**
 * Created by Raj Agrawal
 */
class ${className}Activity : Activity(), ${className}Main.PresenterToView {

    private var mPresenter: ${className}Main.ViewToPresenter? = null

    override val appContext: Context
        get() = applicationContext

    override val activityContext: Context
        get() = this

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setToolbar()
        setupMVP()
        loadData()
    }

    private fun setupMVP() {
        val presenter = ${className}Presenter(this)
        val model = ${className}Model(presenter)
        presenter.setModel(model)
        mPresenter = presenter
    }

    private fun setToolbar() {

    }

    private fun loadData() {

    }

    override fun showProgressIndicator(show: Boolean) {
        if (show) {

        } else {

        }
    }

    override fun notifyDataSetChanged() {

    }

    public override fun onDestroy() {
        mPresenter!!.onDestroy()
        super.onDestroy()
    }

    companion object {

        fun getIntent(context: Context): Intent {
            return Intent(context, ${className}Activity::class.java)
        }
    }
}
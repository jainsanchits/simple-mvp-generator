package ${packageName}.view

import android.app.Activity
import android.content.Context
import android.os.Bundle
import android.content.Intent

import ${packageName}.${className}Main
import ${packageName}.model.${className}Model
import ${packageName}.presenter.${className}Presenter

class ${className}Activity : Activity(), ${className}Main.PresenterToView {
    override val appContext: Context?
        get() = this.applicationContext
    override val activityContext: Context?
        get() = this

    private var mPresenter: ${className}Main.ViewToPresenter? = null

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
        mPresenter?.loadData()
    }

    override fun onError(message: String) {
        // show a dialog-box or anything that indicates error to the user, along with the message.
    }

    override fun onDataLoaded(list: List<*>) {

    }

    private fun showProgressIndicator(show: Boolean) {
        if (show) {

        } else {

        }
    }

    override fun notifyDataSetChanged() {

    }

    public override fun onDestroy() {
        mPresenter?.onDestroy()
        super.onDestroy()
    }

    companion object {
        fun getIntent(context: Context): Intent {
            return Intent(context, ${className}Activity::class.java)
        }
    }
}
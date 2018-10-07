package ${packageName}.view;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import android.support.v4.app.Fragment;

import com.stylabs.styfi.app.R;
import com.stylabs.styfi.app.StyFi;
import ${packageName}.${className}Main;
import ${packageName}.model.${className}Model;
import ${packageName}.presenter.${className}Presenter;

/**
 * Created by Raj Agrawal
 */
class ${className}Fragment : Fragment(), ${className}Main.PresenterToView {

    override val appContext: Context?
        get() = this.requireContext().applicationContext
    override val activityContext: Context?
        get() = this.requireContext()

    private var mPresenter: ${className}Main.ViewToPresenter? = null

    private val rootView: View? = null

    private fun retrieveBundle() {

    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setupMVP()
        retrieveBundle()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        // Inflate the layout for this fragment
        // rootView =  inflater.inflate(R.layout.your_fragment_layout, container, false);
        return rootView
    }

    private fun setupMVP() {
        val presenter = ${className}Presenter(this)
        val model = ${className}Model(presenter)
        presenter.setModel(model)
        mPresenter = presenter
        mPresenter?.setView(this)
    }

    override fun showProgressIndicator(show: Boolean) {
        if (show) {

        } else {

        }
    }

    override fun notifyDataSetChanged() {

    }

    override fun onDestroy() {
        mPresenter?.onDestroy()
        super.onDestroy()
    }

    companion object {

        // TODO: Rename parameter arguments, choose names that match
        // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
        private val ARG_PARAM1 = "param1"
        private val ARG_PARAM2 = "param2"

        // TODO: Rename and change types and number of parameters
        fun newInstance(param1: String, param2: String): ${className}Fragment {
            val fragment = ${className}Fragment()
            val args = Bundle()
            args.putString(ARG_PARAM1, param1)
            args.putString(ARG_PARAM2, param2)
            fragment.arguments = args
            return fragment
        }
    }
}
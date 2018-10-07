package ${packageName}.model;

import ${packageName}.${className}Main;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Raj Agrawal
 */
class ${className}Model(private val mPresenter: ${className}Main.ModelToPresenter) : ${className}Main.PresenterToModel {

/**
 * If you don't use Retrofit, replace "RetrofitCall" with the network call instance of your preference,
 */
//    private val callList: List<RetrofitCall> = arrayListOf()

    override fun loadData() {

    }

    override fun onDestroy() {

//        for (index in 0 until callList.size) {
//            if (callList[index] != null && !callList[index].isCanceled()) {
//                callList[index].cancel()
//            }
//        }
    }
}
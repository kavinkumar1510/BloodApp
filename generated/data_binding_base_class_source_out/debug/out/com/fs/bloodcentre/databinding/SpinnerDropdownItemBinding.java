// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.fs.bloodcentre.R;
import java.lang.NullPointerException;
import java.lang.Override;

public final class SpinnerDropdownItemBinding implements ViewBinding {
  @NonNull
  private final CheckedTextView rootView;

  @NonNull
  public final CheckedTextView text1;

  private SpinnerDropdownItemBinding(@NonNull CheckedTextView rootView,
      @NonNull CheckedTextView text1) {
    this.rootView = rootView;
    this.text1 = text1;
  }

  @Override
  @NonNull
  public CheckedTextView getRoot() {
    return rootView;
  }

  @NonNull
  public static SpinnerDropdownItemBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static SpinnerDropdownItemBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.spinner_dropdown_item, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static SpinnerDropdownItemBinding bind(@NonNull View rootView) {
    if (rootView == null) {
      throw new NullPointerException("rootView");
    }

    CheckedTextView text1 = (CheckedTextView) rootView;

    return new SpinnerDropdownItemBinding((CheckedTextView) rootView, text1);
  }
}

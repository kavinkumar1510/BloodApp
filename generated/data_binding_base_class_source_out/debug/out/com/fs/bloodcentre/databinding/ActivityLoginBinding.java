// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class ActivityLoginBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final TextInputEditText entpass;

  @NonNull
  public final TextInputEditText entusr;

  @NonNull
  public final TextInputLayout th;

  @NonNull
  public final TextView tl1;

  @NonNull
  public final Button ulog;

  @NonNull
  public final Button ureg;

  private ActivityLoginBinding(@NonNull ConstraintLayout rootView,
      @NonNull TextInputEditText entpass, @NonNull TextInputEditText entusr,
      @NonNull TextInputLayout th, @NonNull TextView tl1, @NonNull Button ulog,
      @NonNull Button ureg) {
    this.rootView = rootView;
    this.entpass = entpass;
    this.entusr = entusr;
    this.th = th;
    this.tl1 = tl1;
    this.ulog = ulog;
    this.ureg = ureg;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static ActivityLoginBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static ActivityLoginBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.activity_login, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static ActivityLoginBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.entpass;
      TextInputEditText entpass = ViewBindings.findChildViewById(rootView, id);
      if (entpass == null) {
        break missingId;
      }

      id = R.id.entusr;
      TextInputEditText entusr = ViewBindings.findChildViewById(rootView, id);
      if (entusr == null) {
        break missingId;
      }

      id = R.id.th;
      TextInputLayout th = ViewBindings.findChildViewById(rootView, id);
      if (th == null) {
        break missingId;
      }

      id = R.id.tl1;
      TextView tl1 = ViewBindings.findChildViewById(rootView, id);
      if (tl1 == null) {
        break missingId;
      }

      id = R.id.ulog;
      Button ulog = ViewBindings.findChildViewById(rootView, id);
      if (ulog == null) {
        break missingId;
      }

      id = R.id.ureg;
      Button ureg = ViewBindings.findChildViewById(rootView, id);
      if (ureg == null) {
        break missingId;
      }

      return new ActivityLoginBinding((ConstraintLayout) rootView, entpass, entusr, th, tl1, ulog,
          ureg);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}

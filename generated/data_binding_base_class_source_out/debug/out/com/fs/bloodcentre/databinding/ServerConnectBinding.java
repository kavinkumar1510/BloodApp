// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import com.google.android.material.textfield.TextInputEditText;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class ServerConnectBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final Button b2;

  @NonNull
  public final Button b3;

  @NonNull
  public final Button b4;

  @NonNull
  public final LinearLayout l1;

  @NonNull
  public final TextInputEditText sip;

  @NonNull
  public final TextView t1;

  private ServerConnectBinding(@NonNull ConstraintLayout rootView, @NonNull Button b2,
      @NonNull Button b3, @NonNull Button b4, @NonNull LinearLayout l1,
      @NonNull TextInputEditText sip, @NonNull TextView t1) {
    this.rootView = rootView;
    this.b2 = b2;
    this.b3 = b3;
    this.b4 = b4;
    this.l1 = l1;
    this.sip = sip;
    this.t1 = t1;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static ServerConnectBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static ServerConnectBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.server_connect, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static ServerConnectBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.b2;
      Button b2 = ViewBindings.findChildViewById(rootView, id);
      if (b2 == null) {
        break missingId;
      }

      id = R.id.b3;
      Button b3 = ViewBindings.findChildViewById(rootView, id);
      if (b3 == null) {
        break missingId;
      }

      id = R.id.b4;
      Button b4 = ViewBindings.findChildViewById(rootView, id);
      if (b4 == null) {
        break missingId;
      }

      id = R.id.l1;
      LinearLayout l1 = ViewBindings.findChildViewById(rootView, id);
      if (l1 == null) {
        break missingId;
      }

      id = R.id.sip;
      TextInputEditText sip = ViewBindings.findChildViewById(rootView, id);
      if (sip == null) {
        break missingId;
      }

      id = R.id.t1;
      TextView t1 = ViewBindings.findChildViewById(rootView, id);
      if (t1 == null) {
        break missingId;
      }

      return new ServerConnectBinding((ConstraintLayout) rootView, b2, b3, b4, l1, sip, t1);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}

// Generated by view binder compiler. Do not edit!
package com.fs.bloodcentre.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.fs.bloodcentre.R;
import java.lang.NullPointerException;
import java.lang.Override;
import java.lang.String;

public final class AvailabilityBinding implements ViewBinding {
  @NonNull
  private final ConstraintLayout rootView;

  @NonNull
  public final TextView t1;

  @NonNull
  public final TextView t11;

  @NonNull
  public final TextView t2;

  @NonNull
  public final TextView t21;

  @NonNull
  public final TextView t3;

  @NonNull
  public final TextView t31;

  @NonNull
  public final TextView t4;

  @NonNull
  public final TextView t41;

  @NonNull
  public final TextView t5;

  @NonNull
  public final TextView t51;

  @NonNull
  public final TextView t6;

  @NonNull
  public final TextView t61;

  @NonNull
  public final TextView t7;

  @NonNull
  public final TextView t71;

  @NonNull
  public final TextView t8;

  @NonNull
  public final TextView t81;

  @NonNull
  public final TextView tv1;

  private AvailabilityBinding(@NonNull ConstraintLayout rootView, @NonNull TextView t1,
      @NonNull TextView t11, @NonNull TextView t2, @NonNull TextView t21, @NonNull TextView t3,
      @NonNull TextView t31, @NonNull TextView t4, @NonNull TextView t41, @NonNull TextView t5,
      @NonNull TextView t51, @NonNull TextView t6, @NonNull TextView t61, @NonNull TextView t7,
      @NonNull TextView t71, @NonNull TextView t8, @NonNull TextView t81, @NonNull TextView tv1) {
    this.rootView = rootView;
    this.t1 = t1;
    this.t11 = t11;
    this.t2 = t2;
    this.t21 = t21;
    this.t3 = t3;
    this.t31 = t31;
    this.t4 = t4;
    this.t41 = t41;
    this.t5 = t5;
    this.t51 = t51;
    this.t6 = t6;
    this.t61 = t61;
    this.t7 = t7;
    this.t71 = t71;
    this.t8 = t8;
    this.t81 = t81;
    this.tv1 = tv1;
  }

  @Override
  @NonNull
  public ConstraintLayout getRoot() {
    return rootView;
  }

  @NonNull
  public static AvailabilityBinding inflate(@NonNull LayoutInflater inflater) {
    return inflate(inflater, null, false);
  }

  @NonNull
  public static AvailabilityBinding inflate(@NonNull LayoutInflater inflater,
      @Nullable ViewGroup parent, boolean attachToParent) {
    View root = inflater.inflate(R.layout.availability, parent, false);
    if (attachToParent) {
      parent.addView(root);
    }
    return bind(root);
  }

  @NonNull
  public static AvailabilityBinding bind(@NonNull View rootView) {
    // The body of this method is generated in a way you would not otherwise write.
    // This is done to optimize the compiled bytecode for size and performance.
    int id;
    missingId: {
      id = R.id.t1;
      TextView t1 = ViewBindings.findChildViewById(rootView, id);
      if (t1 == null) {
        break missingId;
      }

      id = R.id.t11;
      TextView t11 = ViewBindings.findChildViewById(rootView, id);
      if (t11 == null) {
        break missingId;
      }

      id = R.id.t2;
      TextView t2 = ViewBindings.findChildViewById(rootView, id);
      if (t2 == null) {
        break missingId;
      }

      id = R.id.t21;
      TextView t21 = ViewBindings.findChildViewById(rootView, id);
      if (t21 == null) {
        break missingId;
      }

      id = R.id.t3;
      TextView t3 = ViewBindings.findChildViewById(rootView, id);
      if (t3 == null) {
        break missingId;
      }

      id = R.id.t31;
      TextView t31 = ViewBindings.findChildViewById(rootView, id);
      if (t31 == null) {
        break missingId;
      }

      id = R.id.t4;
      TextView t4 = ViewBindings.findChildViewById(rootView, id);
      if (t4 == null) {
        break missingId;
      }

      id = R.id.t41;
      TextView t41 = ViewBindings.findChildViewById(rootView, id);
      if (t41 == null) {
        break missingId;
      }

      id = R.id.t5;
      TextView t5 = ViewBindings.findChildViewById(rootView, id);
      if (t5 == null) {
        break missingId;
      }

      id = R.id.t51;
      TextView t51 = ViewBindings.findChildViewById(rootView, id);
      if (t51 == null) {
        break missingId;
      }

      id = R.id.t6;
      TextView t6 = ViewBindings.findChildViewById(rootView, id);
      if (t6 == null) {
        break missingId;
      }

      id = R.id.t61;
      TextView t61 = ViewBindings.findChildViewById(rootView, id);
      if (t61 == null) {
        break missingId;
      }

      id = R.id.t7;
      TextView t7 = ViewBindings.findChildViewById(rootView, id);
      if (t7 == null) {
        break missingId;
      }

      id = R.id.t71;
      TextView t71 = ViewBindings.findChildViewById(rootView, id);
      if (t71 == null) {
        break missingId;
      }

      id = R.id.t8;
      TextView t8 = ViewBindings.findChildViewById(rootView, id);
      if (t8 == null) {
        break missingId;
      }

      id = R.id.t81;
      TextView t81 = ViewBindings.findChildViewById(rootView, id);
      if (t81 == null) {
        break missingId;
      }

      id = R.id.tv1;
      TextView tv1 = ViewBindings.findChildViewById(rootView, id);
      if (tv1 == null) {
        break missingId;
      }

      return new AvailabilityBinding((ConstraintLayout) rootView, t1, t11, t2, t21, t3, t31, t4,
          t41, t5, t51, t6, t61, t7, t71, t8, t81, tv1);
    }
    String missingId = rootView.getResources().getResourceName(id);
    throw new NullPointerException("Missing required view with ID: ".concat(missingId));
  }
}

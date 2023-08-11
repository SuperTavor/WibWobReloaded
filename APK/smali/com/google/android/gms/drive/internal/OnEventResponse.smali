.class public Lcom/google/android/gms/drive/internal/OnEventResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mVersionCode:I

.field final zzaho:I

.field final zzame:Lcom/google/android/gms/drive/events/ChangeEvent;

.field final zzamf:Lcom/google/android/gms/drive/events/CompletionEvent;

.field final zzamg:Lcom/google/android/gms/drive/events/QueryResultEventParcelable;

.field final zzamh:Lcom/google/android/gms/drive/events/ChangesAvailableEvent;

.field final zzami:Lcom/google/android/gms/drive/events/ProgressEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/CompletionEvent;Lcom/google/android/gms/drive/events/QueryResultEventParcelable;Lcom/google/android/gms/drive/events/ChangesAvailableEvent;Lcom/google/android/gms/drive/events/ProgressEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzaho:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzame:Lcom/google/android/gms/drive/events/ChangeEvent;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamf:Lcom/google/android/gms/drive/events/CompletionEvent;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamg:Lcom/google/android/gms/drive/events/QueryResultEventParcelable;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamh:Lcom/google/android/gms/drive/events/ChangesAvailableEvent;

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzami:Lcom/google/android/gms/drive/events/ProgressEvent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbb;->zza(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzrA()Lcom/google/android/gms/drive/events/DriveEvent;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzaho:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzaho:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzame:Lcom/google/android/gms/drive/events/ChangeEvent;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamf:Lcom/google/android/gms/drive/events/CompletionEvent;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamg:Lcom/google/android/gms/drive/events/QueryResultEventParcelable;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzamh:Lcom/google/android/gms/drive/events/ChangesAvailableEvent;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->zzami:Lcom/google/android/gms/drive/events/ProgressEvent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

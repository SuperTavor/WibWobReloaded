.class public final Lcom/google/android/gms/drive/DriveStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final DRIVE_CONTENTS_TOO_LARGE:I = 0x5e4

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DRIVE_RATE_LIMIT_EXCEEDED:I = 0x5e3

.field public static final DRIVE_RESOURCE_NOT_AVAILABLE:I = 0x5de


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DRIVE_RESOURCE_ALREADY_EXISTS"

    goto :goto_0

    :pswitch_1
    const-string v0, "DRIVE_RESOURCE_NOT_AVAILABLE"

    goto :goto_0

    :pswitch_2
    const-string v0, "DRIVE_RESOURCE_FORBIDDEN"

    goto :goto_0

    :pswitch_3
    const-string v0, "DRIVE_REALTIME_CONCURRENT_CREATION"

    goto :goto_0

    :pswitch_4
    const-string v0, "DRIVE_REALTIME_INVALID_COMPOUND_OP"

    goto :goto_0

    :pswitch_5
    const-string v0, "DRIVE_FULL_SYNC_REQUIRED"

    goto :goto_0

    :pswitch_6
    const-string v0, "DRIVE_RATE_LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_7
    const-string v0, "DRIVE_CONTENTS_TOO_LARGE"

    goto :goto_0

    :pswitch_8
    const-string v0, "DRIVE_RESOURCE_PERMISSION_FORBIDDEN"

    goto :goto_0

    :pswitch_9
    const-string v0, "DRIVE_INAPPLICABLE_OPERATION"

    goto :goto_0

    :pswitch_a
    const-string v0, "DRIVE_INSUFFICIENT_SCOPES"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5dd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

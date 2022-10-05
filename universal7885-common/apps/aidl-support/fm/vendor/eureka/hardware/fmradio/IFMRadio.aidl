// Copyright (C) 2022 Eureka Team
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package vendor.eureka.hardware.fmradio;

import vendor.eureka.hardware.fmradio.Direction;
import vendor.eureka.hardware.fmradio.Status;
import vendor.eureka.hardware.fmradio.Space;

interface IFMRadio {
    void adjustFreqByStep(in Direction dir);

    Space getChannelSpacing();

    int getFreqFromSysfs();

    boolean isAvailable();

    void setChannelSpacing(in Space space);

    void setManualFreq(in float freq);
}
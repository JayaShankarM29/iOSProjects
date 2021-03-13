//
//  ContentView.swift
//  MyUnitConverter
//
//  Created by JayaShankar Mangina on 3/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var inputVal = ""
    @State private var outputVal = ""
    
    @State private var inputUnitVal = 2
    let inputUnits = ["meters","miles","yards","feet"]
    @State private var outputUnitVal = 2
    let outputUnits = ["meters","miles","yards","feet"]
    
    var inputUnitAfterConversionToOutput: String{
        
        var output = ""
        var input = Measurement(value: 0, unit: UnitLength.meters)
        
        switch inputUnits[inputUnitVal] {
        case "meters":
            input = Measurement(value: Double(inputVal) ?? 0, unit: UnitLength.meters)
        case "miles":
            input = Measurement(value: Double(inputVal) ?? 0, unit: UnitLength.miles)
        case "yards":
            input = Measurement(value: Double(inputVal) ?? 0, unit: UnitLength.yards)
        case "feet":
            input = Measurement(value: Double(inputVal) ?? 0, unit: UnitLength.feet)
        default:
            input = Measurement(value: Double(inputVal) ?? 0, unit: UnitLength.meters)
        }
        
        switch outputUnits[outputUnitVal] {
        case "meters":
            output = String(describing: input.converted(to: UnitLength.meters))
        case "miles":
            output = String(describing: input.converted(to: UnitLength.miles))
        case "yards":
            output = String(describing: input.converted(to: UnitLength.yards))
        case "feet":
            output = String(describing: input.converted(to: UnitLength.feet))
        default:
            output = String(describing: input.converted(to: UnitLength.meters))
        
        
    }
    
    return output
        
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Enter Input Value")){
                    TextField("Input Value", text:$inputVal)
                }
                
                Section(header:Text("INPUT UNIT"))  {
                    Picker("Input Unit - ", selection:$inputUnitVal){
                        ForEach(0..<inputUnits.count)   {
                            Text("\(inputUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header:Text("OUTPUT UNIT"))  {
                    Picker("Output Unit - ", selection:$outputUnitVal){
                        ForEach(0..<outputUnits.count)   {
                            Text("\(outputUnits[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header:Text("Check Your Output Here")){
                    Text(inputUnitAfterConversionToOutput)
                }
            }
            .navigationTitle("Unit Conversions (USA)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
